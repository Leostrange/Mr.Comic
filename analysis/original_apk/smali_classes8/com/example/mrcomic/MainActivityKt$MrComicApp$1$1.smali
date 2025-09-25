.class final Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mrcomic/MainActivityKt$MrComicApp$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/RowScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/example/mrcomic/MainActivityKt$MrComicApp$1$1\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,1223:1\n1251#2,2:1224\n1251#2,2:1226\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/example/mrcomic/MainActivityKt$MrComicApp$1$1\n*L\n171#1:1224,2\n185#1:1226,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $currentDestination:Landroidx/navigation/NavDestination;

.field final synthetic $navController:Landroidx/navigation/NavHostController;


# direct methods
.method public static synthetic $r8$lambda$8h86qgKrbM2x1fHjZHd6sUNh3U0(Landroidx/navigation/NavHostController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1;->invoke$lambda$7(Landroidx/navigation/NavHostController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QVBTTnOceHq0eaKQCPoPzu4P1jk(Landroidx/navigation/PopUpToBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1;->invoke$lambda$3$lambda$2$lambda$1(Landroidx/navigation/PopUpToBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hVC0l0xSiKYaQg5dXXt0VgKUtP8(Landroidx/navigation/NavHostController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1;->invoke$lambda$3(Landroidx/navigation/NavHostController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ip8owZb_Ss3_ZjXCJFHI1CTck3k(Landroidx/navigation/NavHostController;Landroidx/navigation/NavOptionsBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1;->invoke$lambda$3$lambda$2(Landroidx/navigation/NavHostController;Landroidx/navigation/NavOptionsBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j6yG01FhrRzCcKUfY2vuXYnRiXA(Landroidx/navigation/PopUpToBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1;->invoke$lambda$7$lambda$6$lambda$5(Landroidx/navigation/PopUpToBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j9xPDZgST2eZgkNb6tuXMPVZBFA(Landroidx/navigation/NavHostController;Landroidx/navigation/NavOptionsBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1;->invoke$lambda$7$lambda$6(Landroidx/navigation/NavHostController;Landroidx/navigation/NavOptionsBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/navigation/NavDestination;Landroidx/navigation/NavHostController;)V
    .locals 0

    iput-object p1, p0, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1;->$currentDestination:Landroidx/navigation/NavDestination;

    iput-object p2, p0, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1;->$navController:Landroidx/navigation/NavHostController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$3(Landroidx/navigation/NavHostController;)Lkotlin/Unit;
    .locals 2
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;

    const-string v0, "$navController"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    new-instance v0, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1$$ExternalSyntheticLambda3;-><init>(Landroidx/navigation/NavHostController;)V

    const-string v1, "library"

    invoke-virtual {p0, v1, v0}, Landroidx/navigation/NavHostController;->navigate(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 180
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final invoke$lambda$3$lambda$2(Landroidx/navigation/NavHostController;Landroidx/navigation/NavOptionsBuilder;)Lkotlin/Unit;
    .locals 2
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$this$navigate"    # Landroidx/navigation/NavOptionsBuilder;

    const-string v0, "$navController"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$navigate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    sget-object v0, Landroidx/navigation/NavGraph;->Companion:Landroidx/navigation/NavGraph$Companion;

    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavGraph$Companion;->findStartDestination(Landroidx/navigation/NavGraph;)Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    new-instance v1, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroidx/navigation/NavOptionsBuilder;->popUpTo(ILkotlin/jvm/functions/Function1;)V

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/navigation/NavOptionsBuilder;->setLaunchSingleTop(Z)V

    .line 178
    invoke-virtual {p1, v0}, Landroidx/navigation/NavOptionsBuilder;->setRestoreState(Z)V

    .line 179
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final invoke$lambda$3$lambda$2$lambda$1(Landroidx/navigation/PopUpToBuilder;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this$popUpTo"    # Landroidx/navigation/PopUpToBuilder;

    const-string v0, "$this$popUpTo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/navigation/PopUpToBuilder;->setSaveState(Z)V

    .line 176
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final invoke$lambda$7(Landroidx/navigation/NavHostController;)Lkotlin/Unit;
    .locals 2
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;

    const-string v0, "$navController"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    new-instance v0, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1$$ExternalSyntheticLambda5;-><init>(Landroidx/navigation/NavHostController;)V

    const-string v1, "settings"

    invoke-virtual {p0, v1, v0}, Landroidx/navigation/NavHostController;->navigate(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 194
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final invoke$lambda$7$lambda$6(Landroidx/navigation/NavHostController;Landroidx/navigation/NavOptionsBuilder;)Lkotlin/Unit;
    .locals 2
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$this$navigate"    # Landroidx/navigation/NavOptionsBuilder;

    const-string v0, "$navController"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$navigate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    sget-object v0, Landroidx/navigation/NavGraph;->Companion:Landroidx/navigation/NavGraph$Companion;

    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavGraph$Companion;->findStartDestination(Landroidx/navigation/NavGraph;)Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    new-instance v1, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroidx/navigation/NavOptionsBuilder;->popUpTo(ILkotlin/jvm/functions/Function1;)V

    .line 191
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/navigation/NavOptionsBuilder;->setLaunchSingleTop(Z)V

    .line 192
    invoke-virtual {p1, v0}, Landroidx/navigation/NavOptionsBuilder;->setRestoreState(Z)V

    .line 193
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final invoke$lambda$7$lambda$6$lambda$5(Landroidx/navigation/PopUpToBuilder;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this$popUpTo"    # Landroidx/navigation/PopUpToBuilder;

    const-string v0, "$this$popUpTo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/navigation/PopUpToBuilder;->setSaveState(Z)V

    .line 190
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 167
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1;->invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V
    .locals 20
    .param p1, "$this$NavigationBar"    # Landroidx/compose/foundation/layout/RowScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    const-string v1, "$this$NavigationBar"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "C167@6718L684,181@7419L688:MainActivity.kt#kb949x"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p3

    .local v1, "$dirty":I
    and-int/lit8 v2, p3, 0xe

    if-nez v2, :cond_1

    invoke-interface {v15, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    move/from16 v16, v1

    .line 168
    .end local v1    # "$dirty":I
    .local v16, "$dirty":I
    and-int/lit8 v1, v16, 0x5b

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 195
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_6

    .line 171
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1;->$currentDestination:Landroidx/navigation/NavDestination;

    const/4 v13, 0x1

    const/16 v17, 0x0

    if-eqz v1, :cond_6

    sget-object v2, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v2, v1}, Landroidx/navigation/NavDestination$Companion;->getHierarchy(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    move-result-object v1

    if-eqz v1, :cond_6

    .local v1, "$this$any$iv":Lkotlin/sequences/Sequence;
    const/4 v2, 0x0

    .line 1224
    .local v2, "$i$f$any":I
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavDestination;

    .local v5, "it":Landroidx/navigation/NavDestination;
    const/4 v6, 0x0

    .line 171
    .local v6, "$i$a$-any-MainActivityKt$MrComicApp$1$1$1":I
    invoke-virtual {v5}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object v7

    const-string v8, "library"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 1224
    .end local v5    # "it":Landroidx/navigation/NavDestination;
    .end local v6    # "$i$a$-any-MainActivityKt$MrComicApp$1$1$1":I
    if-eqz v5, :cond_4

    move v1, v13

    goto :goto_2

    .line 1225
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_5
    move/from16 v1, v17

    .line 171
    .end local v1    # "$this$any$iv":Lkotlin/sequences/Sequence;
    .end local v2    # "$i$f$any":I
    :goto_2
    if-ne v1, v13, :cond_6

    move v2, v13

    goto :goto_3

    :cond_6
    move/from16 v2, v17

    .line 168
    :goto_3
    nop

    .line 171
    nop

    .line 168
    iget-object v1, v0, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1;->$navController:Landroidx/navigation/NavHostController;

    new-instance v3, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;)V

    sget-object v1, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;->INSTANCE:Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;

    invoke-virtual {v1}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;->getLambda-2$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v1, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;->INSTANCE:Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;

    invoke-virtual {v1}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;->getLambda-3$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    and-int/lit8 v1, v16, 0xe

    const v18, 0x180c00

    or-int v12, v1, v18

    const/16 v19, 0x1d8

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    move v14, v13

    move/from16 v13, v19

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItem(Landroidx/compose/foundation/layout/RowScope;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/NavigationBarItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    .line 185
    iget-object v1, v0, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1;->$currentDestination:Landroidx/navigation/NavDestination;

    if-eqz v1, :cond_9

    sget-object v2, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v2, v1}, Landroidx/navigation/NavDestination$Companion;->getHierarchy(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    move-result-object v1

    if-eqz v1, :cond_9

    .restart local v1    # "$this$any$iv":Lkotlin/sequences/Sequence;
    const/4 v2, 0x0

    .line 1226
    .restart local v2    # "$i$f$any":I
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavDestination;

    .restart local v5    # "it":Landroidx/navigation/NavDestination;
    const/4 v6, 0x0

    .line 185
    .local v6, "$i$a$-any-MainActivityKt$MrComicApp$1$1$3":I
    invoke-virtual {v5}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object v7

    const-string v8, "settings"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 1226
    .end local v5    # "it":Landroidx/navigation/NavDestination;
    .end local v6    # "$i$a$-any-MainActivityKt$MrComicApp$1$1$3":I
    if-eqz v5, :cond_7

    move v13, v14

    goto :goto_4

    .line 1227
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_8
    move/from16 v13, v17

    .line 185
    .end local v1    # "$this$any$iv":Lkotlin/sequences/Sequence;
    .end local v2    # "$i$f$any":I
    :goto_4
    if-ne v13, v14, :cond_9

    move v2, v14

    goto :goto_5

    :cond_9
    move/from16 v2, v17

    .line 182
    :goto_5
    nop

    .line 185
    nop

    .line 182
    iget-object v1, v0, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1;->$navController:Landroidx/navigation/NavHostController;

    new-instance v3, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/example/mrcomic/MainActivityKt$MrComicApp$1$1$$ExternalSyntheticLambda1;-><init>(Landroidx/navigation/NavHostController;)V

    sget-object v1, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;->INSTANCE:Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;

    invoke-virtual {v1}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;->getLambda-4$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v1, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;->INSTANCE:Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;

    invoke-virtual {v1}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;->getLambda-5$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    and-int/lit8 v1, v16, 0xe

    or-int v12, v1, v18

    const/16 v13, 0x1d8

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItem(Landroidx/compose/foundation/layout/RowScope;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/NavigationBarItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    .line 196
    :goto_6
    return-void
.end method
