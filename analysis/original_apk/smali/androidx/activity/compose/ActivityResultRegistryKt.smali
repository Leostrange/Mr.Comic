.class public final Landroidx/activity/compose/ActivityResultRegistryKt;
.super Ljava/lang/Object;
.source "ActivityResultRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityResultRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultRegistry.kt\nandroidx/activity/compose/ActivityResultRegistryKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,161:1\n25#2:162\n25#2:169\n955#3,6:163\n955#3,6:170\n*S KotlinDebug\n*F\n+ 1 ActivityResultRegistry.kt\nandroidx/activity/compose/ActivityResultRegistryKt\n*L\n97#1:162\n98#1:169\n97#1:163,6\n98#1:170,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001aM\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u00080\u0007H\u0007\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "rememberLauncherForActivityResult",
        "Landroidx/activity/compose/ManagedActivityResultLauncher;",
        "I",
        "O",
        "contract",
        "Landroidx/activity/result/contract/ActivityResultContract;",
        "onResult",
        "Lkotlin/Function1;",
        "",
        "(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;",
        "activity-compose_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final rememberLauncherForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;
    .locals 18
    .param p0, "contract"    # Landroidx/activity/result/contract/ActivityResultContract;
    .param p1, "onResult"    # Lkotlin/jvm/functions/Function1;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TO;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/activity/compose/ManagedActivityResultLauncher<",
            "TI;TO;>;"
        }
    .end annotation

    move-object/from16 v7, p2

    const v0, -0x53f413f7

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "C(rememberLauncherForActivityResult)86@3568L30,87@3625L30,91@3794L49,*93@3924L7,96@4078L46,97@4152L85,103@4364L260:ActivityResultRegistry.kt#q1dkbc"

    invoke-static {v7, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 87
    const/16 v0, 0x8

    move-object/from16 v14, p0

    invoke-static {v14, v7, v0}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v15

    .line 88
    .local v15, "currentContract":Landroidx/compose/runtime/State;
    shr-int/lit8 v0, p3, 0x3

    and-int/lit8 v0, v0, 0xe

    move-object/from16 v13, p1

    invoke-static {v13, v7, v0}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v16

    .local v16, "currentOnResult":Landroidx/compose/runtime/State;
    const/4 v8, 0x0

    new-array v0, v8, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 92
    sget-object v3, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$key$1;->INSTANCE:Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$key$1;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/16 v5, 0xc08

    const/4 v6, 0x6

    move-object/from16 v4, p2

    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 94
    .local v6, "key":Ljava/lang/String;
    sget-object v0, Landroidx/activity/compose/LocalActivityResultRegistryOwner;->INSTANCE:Landroidx/activity/compose/LocalActivityResultRegistryOwner;

    const/4 v1, 0x6

    invoke-virtual {v0, v7, v1}, Landroidx/activity/compose/LocalActivityResultRegistryOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/activity/result/ActivityResultRegistryOwner;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 96
    invoke-interface {v0}, Landroidx/activity/result/ActivityResultRegistryOwner;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v10

    .line 94
    nop

    .line 97
    .local v10, "activityResultRegistry":Landroidx/activity/result/ActivityResultRegistry;
    move v0, v8

    .local v0, "$changed$iv":I
    const/4 v1, 0x0

    .local v1, "$i$f$remember":I
    const v2, -0x384349

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(remember):Composables.kt#9igjgp"

    invoke-static {v7, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 162
    const/4 v4, 0x0

    .local v4, "invalid$iv$iv":Z
    move-object/from16 v5, p2

    .local v5, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 163
    .local v9, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 164
    .local v12, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v11, v2, :cond_0

    .line 165
    const/4 v2, 0x0

    .line 97
    .local v2, "$i$a$-remember-ActivityResultRegistryKt$rememberLauncherForActivityResult$realLauncher$1":I
    new-instance v17, Landroidx/activity/compose/ActivityResultLauncherHolder;

    invoke-direct/range {v17 .. v17}, Landroidx/activity/compose/ActivityResultLauncherHolder;-><init>()V

    .line 165
    .end local v2    # "$i$a$-remember-ActivityResultRegistryKt$rememberLauncherForActivityResult$realLauncher$1":I
    move-object/from16 v2, v17

    .line 166
    .local v2, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 167
    nop

    .end local v2    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 168
    :cond_0
    move-object v2, v11

    .line 164
    :goto_0
    nop

    .line 163
    .end local v11    # "it$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 162
    .end local v4    # "invalid$iv$iv":Z
    .end local v5    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 97
    .end local v0    # "$changed$iv":I
    .end local v1    # "$i$f$remember":I
    move-object v5, v2

    check-cast v5, Landroidx/activity/compose/ActivityResultLauncherHolder;

    .line 98
    .local v5, "realLauncher":Landroidx/activity/compose/ActivityResultLauncherHolder;
    move v0, v8

    .restart local v0    # "$changed$iv":I
    const/4 v1, 0x0

    const v2, -0x384349

    .restart local v1    # "$i$f$remember":I
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v7, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 169
    const/4 v2, 0x0

    .local v2, "invalid$iv$iv":Z
    move-object/from16 v3, p2

    .local v3, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 170
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 171
    .local v9, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v8, v11, :cond_1

    .line 172
    const/4 v11, 0x0

    .line 99
    .local v11, "$i$a$-remember-ActivityResultRegistryKt$rememberLauncherForActivityResult$returnedLauncher$1":I
    new-instance v12, Landroidx/activity/compose/ManagedActivityResultLauncher;

    invoke-direct {v12, v5, v15}, Landroidx/activity/compose/ManagedActivityResultLauncher;-><init>(Landroidx/activity/compose/ActivityResultLauncherHolder;Landroidx/compose/runtime/State;)V

    .line 172
    .end local v11    # "$i$a$-remember-ActivityResultRegistryKt$rememberLauncherForActivityResult$returnedLauncher$1":I
    move-object v11, v12

    .line 173
    .local v11, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 174
    nop

    .end local v11    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_1

    .line 175
    :cond_1
    move-object v11, v8

    .line 171
    :goto_1
    nop

    .line 170
    .end local v8    # "it$iv$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 169
    .end local v2    # "invalid$iv$iv":Z
    .end local v3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 98
    .end local v0    # "$changed$iv":I
    .end local v1    # "$i$f$remember":I
    move-object/from16 v17, v11

    check-cast v17, Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 104
    .local v17, "returnedLauncher":Landroidx/activity/compose/ManagedActivityResultLauncher;
    new-instance v0, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1;

    move-object v8, v0

    move-object v9, v5

    move-object v11, v6

    move-object/from16 v12, p0

    move-object/from16 v13, v16

    invoke-direct/range {v8 .. v13}, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1;-><init>(Landroidx/activity/compose/ActivityResultLauncherHolder;Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/compose/runtime/State;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/16 v8, 0x208

    move-object v0, v10

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    .end local v5    # "realLauncher":Landroidx/activity/compose/ActivityResultLauncherHolder;
    .local v9, "realLauncher":Landroidx/activity/compose/ActivityResultLauncherHolder;
    move v5, v8

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 112
    return-object v17

    .line 94
    .end local v9    # "realLauncher":Landroidx/activity/compose/ActivityResultLauncherHolder;
    .end local v10    # "activityResultRegistry":Landroidx/activity/result/ActivityResultRegistry;
    .end local v17    # "returnedLauncher":Landroidx/activity/compose/ManagedActivityResultLauncher;
    :cond_2
    const/4 v0, 0x0

    .line 95
    .local v0, "$i$a$-checkNotNull-ActivityResultRegistryKt$rememberLauncherForActivityResult$activityResultRegistry$1":I
    nop

    .line 94
    .end local v0    # "$i$a$-checkNotNull-ActivityResultRegistryKt$rememberLauncherForActivityResult$activityResultRegistry$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No ActivityResultRegistryOwner was provided via LocalActivityResultRegistryOwner"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
