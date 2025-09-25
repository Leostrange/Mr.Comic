.class public final Landroidx/navigation/compose/NavHostKt;
.super Ljava/lang/Object;
.source "NavHost.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavHost.kt\nandroidx/navigation/compose/NavHostKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 NavController.kt\nandroidx/navigation/NavControllerKt\n+ 5 NavGraphBuilder.kt\nandroidx/navigation/NavGraphBuilderKt\n+ 6 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 7 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,368:1\n67#2,3:369\n66#2:372\n67#2,3:382\n66#2:385\n25#2:397\n25#2:404\n67#2,3:411\n66#2:414\n67#2,3:421\n66#2:424\n50#2:431\n49#2:432\n1097#3,3:373\n1100#3,3:379\n1097#3,3:386\n1100#3,3:392\n1097#3,6:398\n1097#3,6:405\n1097#3,6:415\n1097#3,6:425\n1097#3,6:433\n2603#4:376\n2603#4:389\n57#5,2:377\n57#5,2:390\n76#6:395\n150#7:396\n150#7:439\n81#8:440\n81#8:441\n81#8:442\n*S KotlinDebug\n*F\n+ 1 NavHost.kt\nandroidx/navigation/compose/NavHostKt\n*L\n84#1:369,3\n84#1:372\n130#1:382,3\n130#1:385\n231#1:397\n241#1:404\n244#1:411,3\n244#1:414\n258#1:421,3\n258#1:424\n321#1:431\n321#1:432\n84#1:373,3\n84#1:379,3\n130#1:386,3\n130#1:392,3\n231#1:398,6\n241#1:405,6\n244#1:415,6\n258#1:425,6\n321#1:433,6\n85#1:376\n131#1:389\n85#1:377,2\n131#1:390,2\n198#1:395\n210#1:396\n330#1:439\n214#1:440\n228#1:441\n231#1:442\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0002\u001a\'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u0010\u0008\u001a\u00b5\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u001f\u0008\u0002\u0010\u000b\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u00102\u001f\u0008\u0002\u0010\u0011\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00120\u000c\u00a2\u0006\u0002\u0008\u00102\u001f\u0008\u0002\u0010\u0013\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u00102\u001f\u0008\u0002\u0010\u0014\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00120\u000c\u00a2\u0006\u0002\u0008\u0010H\u0007\u00a2\u0006\u0002\u0010\u0015\u001a\u00da\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u001f\u0008\u0002\u0010\u000b\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u00102\u001f\u0008\u0002\u0010\u0011\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00120\u000c\u00a2\u0006\u0002\u0008\u00102\u001f\u0008\u0002\u0010\u0013\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u00102\u001f\u0008\u0002\u0010\u0014\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00120\u000c\u00a2\u0006\u0002\u0008\u00102\u0017\u0010\u0019\u001a\u0013\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00010\u000c\u00a2\u0006\u0002\u0008\u0010H\u0007\u00a2\u0006\u0002\u0010\u001b\u001aL\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0017\u0010\u0019\u001a\u0013\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00010\u000c\u00a2\u0006\u0002\u0008\u0010H\u0007\u00a2\u0006\u0002\u0010\u001c\u001a\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u000f*\u00020\u001e2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002\u001a\u001c\u0010 \u001a\u0004\u0018\u00010\u0012*\u00020\u001e2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002\u001a\u001c\u0010!\u001a\u0004\u0018\u00010\u000f*\u00020\u001e2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002\u001a\u001c\u0010\"\u001a\u0004\u0018\u00010\u0012*\u00020\u001e2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002\u00a8\u0006#\u00b2\u0006\u0010\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u000e0%X\u008a\u0084\u0002\u00b2\u0006\u0010\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u000e0%X\u008a\u0084\u0002\u00b2\u0006\u0010\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u000e0%X\u008a\u0084\u0002"
    }
    d2 = {
        "NavHost",
        "",
        "navController",
        "Landroidx/navigation/NavHostController;",
        "graph",
        "Landroidx/navigation/NavGraph;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V",
        "contentAlignment",
        "Landroidx/compose/ui/Alignment;",
        "enterTransition",
        "Lkotlin/Function1;",
        "Landroidx/compose/animation/AnimatedContentTransitionScope;",
        "Landroidx/navigation/NavBackStackEntry;",
        "Landroidx/compose/animation/EnterTransition;",
        "Lkotlin/ExtensionFunctionType;",
        "exitTransition",
        "Landroidx/compose/animation/ExitTransition;",
        "popEnterTransition",
        "popExitTransition",
        "(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V",
        "startDestination",
        "",
        "route",
        "builder",
        "Landroidx/navigation/NavGraphBuilder;",
        "(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V",
        "(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V",
        "createEnterTransition",
        "Landroidx/navigation/NavDestination;",
        "scope",
        "createExitTransition",
        "createPopEnterTransition",
        "createPopExitTransition",
        "navigation-compose_release",
        "currentBackStack",
        "",
        "allVisibleEntries",
        "visibleEntries"
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
.method public static final synthetic NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 15
    .param p0, "navController"    # Landroidx/navigation/NavHostController;
    .param p1, "graph"    # Landroidx/navigation/NavGraph;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of NavHost that supports AnimatedContent"
    .end annotation

    .line 164
    const v0, -0x390ae240    # -31374.875f

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(NavHost)P(2)163@6434L39:NavHost.kt#opm8kd"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v13, p4

    .local v13, "$dirty":I
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_0

    .line 163
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v14, v1

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_0

    .line 164
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_0
    move-object/from16 v14, p2

    .line 163
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "modifier":Landroidx/compose/ui/Modifier;
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    const/4 v1, -0x1

    const-string v2, "androidx.navigation.compose.NavHost (NavHost.kt:163)"

    invoke-static {v0, v13, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    and-int/lit16 v0, v13, 0x380

    or-int/lit8 v10, v0, 0x48

    const/16 v11, 0xf8

    move-object v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object v9, v12

    invoke-static/range {v1 .. v11}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v7, Landroidx/navigation/compose/NavHostKt$NavHost$7;

    move-object v1, v7

    move-object v2, p0

    move-object/from16 v3, p1

    move-object v4, v14

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/navigation/compose/NavHostKt$NavHost$7;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;II)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_1
    return-void
.end method

.method public static final NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 30
    .param p0, "navController"    # Landroidx/navigation/NavHostController;
    .param p1, "graph"    # Landroidx/navigation/NavGraph;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "contentAlignment"    # Landroidx/compose/ui/Alignment;
    .param p4, "enterTransition"    # Lkotlin/jvm/functions/Function1;
    .param p5, "exitTransition"    # Lkotlin/jvm/functions/Function1;
    .param p6, "popEnterTransition"    # Lkotlin/jvm/functions/Function1;
    .param p7, "popExitTransition"    # Lkotlin/jvm/functions/Function1;
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavHostController;",
            "Landroidx/navigation/NavGraph;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Alignment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;+",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;+",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;+",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;+",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 196
    move-object/from16 v11, p0

    move/from16 v10, p10

    const v0, -0x6c5f682b

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(NavHost)P(5,3,4)197@8123L7,*198@8199L7,213@8790L16,215@8812L83,219@8901L172,225@9105L29,227@9194L16,230@9299L186,240@9580L42,334@14081L27:NavHost.kt#opm8kd"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p9

    .local v1, "$dirty":I
    and-int/lit8 v2, v10, 0x4

    if-eqz v2, :cond_0

    .line 186
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    move-object v13, v2

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_0

    .line 196
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_0
    move-object/from16 v13, p2

    .line 186
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    :goto_0
    and-int/lit8 v2, v10, 0x8

    if-eqz v2, :cond_1

    .line 187
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v2

    move-object v14, v2

    .end local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v2, "contentAlignment":Landroidx/compose/ui/Alignment;
    goto :goto_1

    .line 186
    .end local v2    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .restart local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    :cond_1
    move-object/from16 v14, p3

    .line 187
    .end local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v14, "contentAlignment":Landroidx/compose/ui/Alignment;
    :goto_1
    and-int/lit8 v2, v10, 0x10

    if-eqz v2, :cond_2

    .line 189
    sget-object v2, Landroidx/navigation/compose/NavHostKt$NavHost$8;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$8;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object v15, v2

    .end local p4    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v2, "enterTransition":Lkotlin/jvm/functions/Function1;
    goto :goto_2

    .line 187
    .end local v2    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "enterTransition":Lkotlin/jvm/functions/Function1;
    :cond_2
    move-object/from16 v15, p4

    .line 189
    .end local p4    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v15, "enterTransition":Lkotlin/jvm/functions/Function1;
    :goto_2
    and-int/lit8 v2, v10, 0x20

    if-eqz v2, :cond_3

    .line 191
    sget-object v2, Landroidx/navigation/compose/NavHostKt$NavHost$9;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$9;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object v9, v2

    .end local p5    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v2, "exitTransition":Lkotlin/jvm/functions/Function1;
    goto :goto_3

    .line 189
    .end local v2    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .restart local p5    # "exitTransition":Lkotlin/jvm/functions/Function1;
    :cond_3
    move-object/from16 v9, p5

    .line 191
    .end local p5    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v9, "exitTransition":Lkotlin/jvm/functions/Function1;
    :goto_3
    and-int/lit8 v2, v10, 0x40

    if-eqz v2, :cond_4

    .line 193
    move-object v2, v15

    .end local p6    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v2, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    const v3, -0x380001

    and-int/2addr v1, v3

    move-object v8, v2

    goto :goto_4

    .line 191
    .end local v2    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local p6    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    :cond_4
    move-object/from16 v8, p6

    .line 193
    .end local p6    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v8, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    :goto_4
    and-int/lit16 v2, v10, 0x80

    if-eqz v2, :cond_5

    .line 195
    move-object v2, v9

    .end local p7    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v2, "popExitTransition":Lkotlin/jvm/functions/Function1;
    const v3, -0x1c00001

    and-int/2addr v1, v3

    move v6, v1

    move-object v7, v2

    goto :goto_5

    .line 193
    .end local v2    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local p7    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    :cond_5
    move-object/from16 v7, p7

    move v6, v1

    .line 195
    .end local v1    # "$dirty":I
    .end local p7    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v6, "$dirty":I
    .local v7, "popExitTransition":Lkotlin/jvm/functions/Function1;
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 196
    const/4 v1, -0x1

    const-string v2, "androidx.navigation.compose.NavHost (NavHost.kt:195)"

    invoke-static {v0, v6, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 198
    :cond_6
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalLifecycleOwner()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .line 395
    .local v2, "$i$f$getCurrent":I
    const v3, 0x789c5f52

    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v12, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 198
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    move-object v5, v3

    check-cast v5, Landroidx/lifecycle/LifecycleOwner;

    .line 199
    .local v5, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    sget v1, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->$stable:I

    invoke-virtual {v0, v12, v1}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v0

    if-eqz v0, :cond_1b

    move-object/from16 v16, v0

    .line 203
    .local v16, "viewModelStoreOwner":Landroidx/lifecycle/ViewModelStoreOwner;
    invoke-interface/range {v16 .. v16}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroidx/navigation/NavHostController;->setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V

    .line 206
    invoke-virtual/range {p0 .. p1}, Landroidx/navigation/NavHostController;->setGraph(Landroidx/navigation/NavGraph;)V

    .line 210
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavHostController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    .line 211
    nop

    .line 210
    nop

    .local v0, "$this$get$iv":Landroidx/navigation/NavigatorProvider;
    const-string v1, "composable"

    .local v1, "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 396
    .local v2, "$i$f$get":I
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    .line 210
    .end local v0    # "$this$get$iv":Landroidx/navigation/NavigatorProvider;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$get":I
    instance-of v1, v0, Landroidx/navigation/compose/ComposeNavigator;

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    check-cast v0, Landroidx/navigation/compose/ComposeNavigator;

    goto :goto_6

    :cond_7
    move-object v0, v4

    :goto_6
    if-nez v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v4

    if-nez v4, :cond_9

    move-object/from16 p5, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 p2, v13

    move-object/from16 p3, v14

    move-object/from16 p4, v15

    move-object v14, v5

    move v15, v6

    goto :goto_7

    :cond_9
    new-instance v17, Landroidx/navigation/compose/NavHostKt$NavHost$composeNavigator$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-object/from16 p2, v13

    move-object v13, v4

    .end local v13    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    move-object v4, v14

    move-object/from16 p3, v14

    move-object v14, v5

    .end local v5    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .local v14, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .restart local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    move-object v5, v15

    move-object/from16 p4, v15

    move v15, v6

    .end local v6    # "$dirty":I
    .local v15, "$dirty":I
    .restart local p4    # "enterTransition":Lkotlin/jvm/functions/Function1;
    move-object v6, v9

    move-object/from16 p5, v7

    .end local v7    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local p5, "popExitTransition":Lkotlin/jvm/functions/Function1;
    move-object v7, v8

    move-object/from16 v18, v8

    .end local v8    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v18, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    move-object/from16 v8, p5

    move-object/from16 v19, v9

    .end local v9    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v19, "exitTransition":Lkotlin/jvm/functions/Function1;
    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/navigation/compose/NavHostKt$NavHost$composeNavigator$1;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 212
    :goto_7
    return-void

    .line 210
    .end local v18    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .end local v19    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .end local p4    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .end local p5    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v5    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .restart local v6    # "$dirty":I
    .restart local v7    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v8    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local v9    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v13    # "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v15, "enterTransition":Lkotlin/jvm/functions/Function1;
    :cond_a
    move-object/from16 p5, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 p2, v13

    move-object/from16 p3, v14

    move-object/from16 p4, v15

    move-object v14, v5

    move v15, v6

    .end local v5    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .end local v6    # "$dirty":I
    .end local v7    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .end local v8    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .end local v9    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .end local v13    # "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .local v15, "$dirty":I
    .restart local v18    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local v19    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .restart local p4    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .restart local p5    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    move-object v13, v0

    .line 214
    .local v13, "composeNavigator":Landroidx/navigation/compose/ComposeNavigator;
    invoke-virtual {v13}, Landroidx/navigation/compose/ComposeNavigator;->getBackStack()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v9, 0x1

    invoke-static {v0, v4, v12, v1, v9}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v17

    .line 216
    .local v17, "currentBackStack$delegate":Landroidx/compose/runtime/State;
    invoke-static/range {v17 .. v17}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$3(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v8, 0x0

    if-le v0, v9, :cond_b

    move v0, v9

    goto :goto_8

    :cond_b
    move v0, v8

    :goto_8
    new-instance v2, Landroidx/navigation/compose/NavHostKt$NavHost$10;

    invoke-direct {v2, v11}, Landroidx/navigation/compose/NavHostKt$NavHost$10;-><init>(Landroidx/navigation/NavHostController;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v12, v8, v8}, Landroidx/activity/compose/BackHandlerKt;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 220
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$11;

    invoke-direct {v0, v11, v14}, Landroidx/navigation/compose/NavHostKt$NavHost$11;-><init>(Landroidx/navigation/NavHostController;Landroidx/lifecycle/LifecycleOwner;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v0, v12, v1}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 226
    invoke-static {v12, v8}, Landroidx/compose/runtime/saveable/SaveableStateHolderKt;->rememberSaveableStateHolder(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/saveable/SaveableStateHolder;

    move-result-object v0

    .line 228
    .local v0, "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavHostController;->getVisibleEntries()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-static {v2, v4, v12, v1, v9}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v7

    .line 231
    .local v7, "allVisibleEntries$delegate":Landroidx/compose/runtime/State;
    move v1, v8

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$remember":I
    const v3, -0x1d58f75c

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v12, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 397
    const/4 v6, 0x0

    .local v6, "invalid$iv$iv":Z
    move-object/from16 p6, v12

    .local p6, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 398
    .local v20, "$i$f$cache":I
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 399
    .local v21, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v4, v9, :cond_c

    .line 400
    const/4 v9, 0x0

    .line 232
    .local v9, "$i$a$-remember-NavHostKt$NavHost$visibleEntries$2":I
    new-instance v3, Landroidx/navigation/compose/NavHostKt$NavHost$visibleEntries$2$1;

    invoke-direct {v3, v7}, Landroidx/navigation/compose/NavHostKt$NavHost$visibleEntries$2$1;-><init>(Landroidx/compose/runtime/State;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v3

    .line 400
    .end local v9    # "$i$a$-remember-NavHostKt$NavHost$visibleEntries$2":I
    nop

    .line 401
    .local v3, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v9, p6

    .end local p6    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 402
    nop

    .end local v3    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_9

    .line 403
    .end local v9    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local p6    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_c
    move-object/from16 v9, p6

    .end local p6    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v9    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    move-object v3, v4

    .line 399
    :goto_9
    nop

    .line 398
    .end local v4    # "it$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 397
    .end local v6    # "invalid$iv$iv":Z
    .end local v9    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 231
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$remember":I
    move-object v9, v3

    check-cast v9, Landroidx/compose/runtime/State;

    .line 239
    .local v9, "visibleEntries$delegate":Landroidx/compose/runtime/State;
    invoke-static {v9}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$6(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    .line 241
    .local v6, "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    move v1, v8

    .restart local v1    # "$changed$iv":I
    const/4 v2, 0x0

    const v3, -0x1d58f75c

    .restart local v2    # "$i$f$remember":I
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 404
    const/4 v3, 0x0

    .local v3, "invalid$iv$iv":Z
    move-object v4, v12

    .local v4, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 405
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 406
    .local v20, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v22, v1

    .end local v1    # "$changed$iv":I
    .local v22, "$changed$iv":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v8, v1, :cond_d

    .line 407
    const/4 v1, 0x0

    .line 241
    .local v1, "$i$a$-remember-NavHostKt$NavHost$zIndices$1":I
    new-instance v21, Ljava/util/LinkedHashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v21, Ljava/util/Map;

    .line 407
    .end local v1    # "$i$a$-remember-NavHostKt$NavHost$zIndices$1":I
    move-object/from16 v1, v21

    .line 408
    .local v1, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 409
    nop

    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_a

    .line 410
    :cond_d
    move-object v1, v8

    .line 406
    :goto_a
    nop

    .line 405
    .end local v8    # "it$iv$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 404
    .end local v3    # "invalid$iv$iv":Z
    .end local v4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 241
    .end local v2    # "$i$f$remember":I
    .end local v22    # "$changed$iv":I
    move-object/from16 v26, v1

    check-cast v26, Ljava/util/Map;

    .local v26, "zIndices":Ljava/util/Map;
    const v1, 0x6c9c3aa2

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "243@9756L577,257@10431L577,271@11035L49,272@11104L2105,310@13218L441,320@13691L182,320@13668L205"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 243
    if-eqz v6, :cond_14

    shr-int/lit8 v1, v15, 0xf

    and-int/lit8 v1, v1, 0x70

    shr-int/lit8 v2, v15, 0x6

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v1, v2

    .line 244
    nop

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .restart local v2    # "$i$f$remember":I
    const v3, 0x607fb4c4

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {v12, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 411
    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    .line 412
    move-object/from16 v8, v18

    .end local v18    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v8, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    .line 411
    or-int v5, v5, v18

    .line 413
    move-object/from16 v3, p4

    .end local p4    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v3, "enterTransition":Lkotlin/jvm/functions/Function1;
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    .line 411
    or-int v5, v5, v20

    .line 414
    nop

    .local v5, "invalid$iv$iv":Z
    move-object/from16 p4, v12

    .local p4, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 415
    .local v20, "$i$f$cache":I
    move/from16 v21, v1

    .end local v1    # "$changed$iv":I
    .local v21, "$changed$iv":I
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 416
    .local v22, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v5, :cond_f

    sget-object v23, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v24, v2

    .end local v2    # "$i$f$remember":I
    .local v24, "$i$f$remember":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_e

    goto :goto_b

    .line 420
    :cond_e
    move-object/from16 v2, p4

    move-object/from16 v23, v1

    goto :goto_c

    .line 416
    .end local v24    # "$i$f$remember":I
    .restart local v2    # "$i$f$remember":I
    :cond_f
    move/from16 v24, v2

    .line 417
    .end local v2    # "$i$f$remember":I
    .restart local v24    # "$i$f$remember":I
    :goto_b
    const/4 v2, 0x0

    .line 244
    .local v2, "$i$a$-remember-NavHostKt$NavHost$finalEnter$1":I
    move-object/from16 v23, v1

    .end local v1    # "it$iv$iv":Ljava/lang/Object;
    .local v23, "it$iv$iv":Ljava/lang/Object;
    new-instance v1, Landroidx/navigation/compose/NavHostKt$NavHost$finalEnter$1$1;

    invoke-direct {v1, v13, v8, v3}, Landroidx/navigation/compose/NavHostKt$NavHost$finalEnter$1$1;-><init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 417
    .end local v2    # "$i$a$-remember-NavHostKt$NavHost$finalEnter$1":I
    nop

    .line 418
    .local v1, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v2, p4

    .end local p4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 419
    nop

    .line 416
    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    :goto_c
    nop

    .line 415
    .end local v22    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v23    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 414
    .end local v2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "invalid$iv$iv":Z
    .end local v20    # "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 244
    .end local v21    # "$changed$iv":I
    .end local v24    # "$i$f$remember":I
    move-object/from16 v27, v1

    check-cast v27, Lkotlin/jvm/functions/Function1;

    .local v27, "finalEnter":Lkotlin/jvm/functions/Function1;
    shr-int/lit8 v1, v15, 0x12

    and-int/lit8 v1, v1, 0x70

    shr-int/lit8 v2, v15, 0x9

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v1, v2

    .line 258
    nop

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    const v5, 0x607fb4c4

    .local v2, "$i$f$remember":I
    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 421
    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 422
    move-object/from16 v5, p5

    .end local p5    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v5, "popExitTransition":Lkotlin/jvm/functions/Function1;
    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    .line 421
    or-int v4, v4, v18

    .line 423
    move-object/from16 v11, v19

    .end local v19    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v11, "exitTransition":Lkotlin/jvm/functions/Function1;
    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    .line 421
    or-int v4, v4, v18

    .line 424
    move-object/from16 p4, v12

    .local v4, "invalid$iv$iv":Z
    .restart local p4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 425
    .local v18, "$i$f$cache":I
    move/from16 p5, v1

    .end local v1    # "$changed$iv":I
    .local p5, "$changed$iv":I
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 426
    .local v19, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v4, :cond_11

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v21, v2

    .end local v2    # "$i$f$remember":I
    .local v21, "$i$f$remember":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_10

    goto :goto_d

    .line 430
    :cond_10
    move-object/from16 v2, p4

    move-object/from16 v20, v1

    goto :goto_e

    .line 426
    .end local v21    # "$i$f$remember":I
    .restart local v2    # "$i$f$remember":I
    :cond_11
    move/from16 v21, v2

    .line 427
    .end local v2    # "$i$f$remember":I
    .restart local v21    # "$i$f$remember":I
    :goto_d
    const/4 v2, 0x0

    .line 258
    .local v2, "$i$a$-remember-NavHostKt$NavHost$finalExit$1":I
    move-object/from16 v20, v1

    .end local v1    # "it$iv$iv":Ljava/lang/Object;
    .local v20, "it$iv$iv":Ljava/lang/Object;
    new-instance v1, Landroidx/navigation/compose/NavHostKt$NavHost$finalExit$1$1;

    invoke-direct {v1, v13, v5, v11}, Landroidx/navigation/compose/NavHostKt$NavHost$finalExit$1$1;-><init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 427
    .end local v2    # "$i$a$-remember-NavHostKt$NavHost$finalExit$1":I
    nop

    .line 428
    .local v1, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v2, p4

    .end local p4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 429
    nop

    .line 426
    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    :goto_e
    nop

    .line 425
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v20    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 424
    .end local v2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "invalid$iv$iv":Z
    .end local v18    # "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 258
    .end local v21    # "$i$f$remember":I
    .end local p5    # "$changed$iv":I
    move-object/from16 v18, v1

    check-cast v18, Lkotlin/jvm/functions/Function1;

    .line 272
    .local v18, "finalExit":Lkotlin/jvm/functions/Function1;
    const-string v1, "entry"

    const/16 v2, 0x38

    const/4 v4, 0x0

    invoke-static {v6, v1, v12, v2, v4}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v19

    .line 273
    .local v19, "transition":Landroidx/compose/animation/core/Transition;
    nop

    .line 274
    nop

    .line 273
    new-instance v1, Landroidx/navigation/compose/NavHostKt$NavHost$12;

    move-object/from16 v20, v1

    move-object/from16 v21, v26

    move-object/from16 v22, v13

    move-object/from16 v23, v27

    move-object/from16 v24, v18

    move-object/from16 v25, v9

    invoke-direct/range {v20 .. v25}, Landroidx/navigation/compose/NavHostKt$NavHost$12;-><init>(Ljava/util/Map;Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;)V

    move-object/from16 v20, v1

    check-cast v20, Lkotlin/jvm/functions/Function1;

    .line 293
    nop

    .line 273
    sget-object v1, Landroidx/navigation/compose/NavHostKt$NavHost$13;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$13;

    move-object/from16 v21, v1

    check-cast v21, Lkotlin/jvm/functions/Function1;

    .line 295
    new-instance v1, Landroidx/navigation/compose/NavHostKt$NavHost$14;

    invoke-direct {v1, v0, v9}, Landroidx/navigation/compose/NavHostKt$NavHost$14;-><init>(Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/runtime/State;)V

    const v2, -0x55d59677

    move-object/from16 p4, v0

    const/4 v0, 0x1

    .end local v0    # "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    .local p4, "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    invoke-static {v12, v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lkotlin/jvm/functions/Function4;

    shr-int/lit8 v1, v15, 0x3

    and-int/lit8 v1, v1, 0x70

    const v2, 0x36000

    or-int/2addr v1, v2

    and-int/lit16 v2, v15, 0x1c00

    or-int v23, v1, v2

    const/16 v24, 0x0

    .line 273
    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move-object/from16 v25, v3

    .end local v3    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v25, "enterTransition":Lkotlin/jvm/functions/Function1;
    move-object/from16 v3, v20

    move/from16 v28, v4

    const/16 v20, 0x0

    move-object/from16 v4, p3

    move-object/from16 v29, v5

    .end local v5    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v29, "popExitTransition":Lkotlin/jvm/functions/Function1;
    move-object/from16 v5, v21

    move-object/from16 v21, v6

    .end local v6    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    .local v21, "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    move-object/from16 v6, v22

    move-object/from16 v22, v7

    .end local v7    # "allVisibleEntries$delegate":Landroidx/compose/runtime/State;
    .local v22, "allVisibleEntries$delegate":Landroidx/compose/runtime/State;
    move-object v7, v12

    move/from16 v0, v28

    move-object/from16 v28, v8

    .end local v8    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v28, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    move/from16 v8, v23

    move-object/from16 p5, v9

    const/16 v23, 0x1

    .end local v9    # "visibleEntries$delegate":Landroidx/compose/runtime/State;
    .local p5, "visibleEntries$delegate":Landroidx/compose/runtime/State;
    move/from16 v9, v24

    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/AnimatedContentKt;->AnimatedContent(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    .line 311
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v8

    new-instance v9, Landroidx/navigation/compose/NavHostKt$NavHost$15;

    const/4 v6, 0x0

    move-object v1, v9

    move-object/from16 v2, v19

    move-object/from16 v3, v26

    move-object/from16 v4, p5

    move-object v5, v13

    invoke-direct/range {v1 .. v6}, Landroidx/navigation/compose/NavHostKt$NavHost$15;-><init>(Landroidx/compose/animation/core/Transition;Ljava/util/Map;Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/16 v1, 0x248

    invoke-static {v7, v8, v9, v12, v1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 321
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .local v3, "$i$f$remember":I
    const v4, 0x1e7b2b64

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v12, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 431
    move-object/from16 v9, p5

    .end local p5    # "visibleEntries$delegate":Landroidx/compose/runtime/State;
    .restart local v9    # "visibleEntries$delegate":Landroidx/compose/runtime/State;
    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    .line 432
    move-object v5, v12

    .restart local v4    # "invalid$iv$iv":Z
    .local v5, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 433
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 434
    .local v8, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v4, :cond_13

    sget-object v23, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v7, v0, :cond_12

    goto :goto_f

    .line 438
    :cond_12
    move-object v0, v7

    goto :goto_10

    .line 435
    :cond_13
    :goto_f
    const/4 v0, 0x0

    .line 321
    .local v0, "$i$a$-remember-NavHostKt$NavHost$16":I
    move/from16 p5, v0

    .end local v0    # "$i$a$-remember-NavHostKt$NavHost$16":I
    .local p5, "$i$a$-remember-NavHostKt$NavHost$16":I
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$16$1;

    invoke-direct {v0, v9, v13}, Landroidx/navigation/compose/NavHostKt$NavHost$16$1;-><init>(Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 435
    .end local p5    # "$i$a$-remember-NavHostKt$NavHost$16":I
    nop

    .line 436
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 437
    nop

    .line 434
    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    :goto_10
    nop

    .line 433
    .end local v7    # "it$iv$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 432
    .end local v4    # "invalid$iv$iv":Z
    .end local v5    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v2    # "$changed$iv":I
    .end local v3    # "$i$f$remember":I
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 321
    const/4 v2, 0x6

    invoke-static {v1, v0, v12, v2}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_11

    .line 243
    .end local v11    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .end local v21    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v22    # "allVisibleEntries$delegate":Landroidx/compose/runtime/State;
    .end local v25    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .end local v27    # "finalEnter":Lkotlin/jvm/functions/Function1;
    .end local v28    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .end local v29    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v0, "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    .local v6, "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    .local v7, "allVisibleEntries$delegate":Landroidx/compose/runtime/State;
    .local v18, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v19, "exitTransition":Lkotlin/jvm/functions/Function1;
    .local p4, "enterTransition":Lkotlin/jvm/functions/Function1;
    .local p5, "popExitTransition":Lkotlin/jvm/functions/Function1;
    :cond_14
    move-object/from16 v25, p4

    move-object/from16 v29, p5

    move-object/from16 p4, v0

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v28, v18

    move-object/from16 v11, v19

    const/16 v20, 0x0

    .line 321
    .end local v0    # "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    .end local v6    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v7    # "allVisibleEntries$delegate":Landroidx/compose/runtime/State;
    .end local v18    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .end local v19    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .end local p5    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v11    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .restart local v21    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    .restart local v22    # "allVisibleEntries$delegate":Landroidx/compose/runtime/State;
    .restart local v25    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .restart local v28    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local v29    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local p4, "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    :goto_11
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 330
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavHostController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    .line 331
    nop

    .line 330
    const-string v1, "dialog"

    .local v0, "$this$get$iv":Landroidx/navigation/NavigatorProvider;
    .local v1, "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 439
    .local v2, "$i$f$get":I
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    .line 330
    .end local v0    # "$this$get$iv":Landroidx/navigation/NavigatorProvider;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$get":I
    instance-of v1, v0, Landroidx/navigation/compose/DialogNavigator;

    if-eqz v1, :cond_15

    move-object v4, v0

    check-cast v4, Landroidx/navigation/compose/DialogNavigator;

    goto :goto_12

    :cond_15
    move-object/from16 v4, v20

    :goto_12
    if-nez v4, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_16
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-nez v8, :cond_17

    move-object/from16 v19, p4

    move-object/from16 v20, v9

    move-object/from16 p4, v13

    goto :goto_13

    :cond_17
    new-instance v18, Landroidx/navigation/compose/NavHostKt$NavHost$dialogNavigator$1;

    move-object/from16 v19, p4

    .end local p4    # "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    .local v19, "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v25

    move-object v6, v11

    move-object/from16 v7, v28

    move-object/from16 p4, v13

    move-object v13, v8

    .end local v13    # "composeNavigator":Landroidx/navigation/compose/ComposeNavigator;
    .local p4, "composeNavigator":Landroidx/navigation/compose/ComposeNavigator;
    move-object/from16 v8, v29

    move-object/from16 v20, v9

    .end local v9    # "visibleEntries$delegate":Landroidx/compose/runtime/State;
    .local v20, "visibleEntries$delegate":Landroidx/compose/runtime/State;
    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/navigation/compose/NavHostKt$NavHost$dialogNavigator$1;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    move-object/from16 v0, v18

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 332
    :goto_13
    return-void

    .line 330
    .end local v19    # "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    .end local v20    # "visibleEntries$delegate":Landroidx/compose/runtime/State;
    .restart local v9    # "visibleEntries$delegate":Landroidx/compose/runtime/State;
    .restart local v13    # "composeNavigator":Landroidx/navigation/compose/ComposeNavigator;
    .local p4, "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    :cond_18
    move-object/from16 v19, p4

    move-object/from16 v20, v9

    move-object/from16 p4, v13

    .end local v9    # "visibleEntries$delegate":Landroidx/compose/runtime/State;
    .end local v13    # "composeNavigator":Landroidx/navigation/compose/ComposeNavigator;
    .restart local v19    # "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    .restart local v20    # "visibleEntries$delegate":Landroidx/compose/runtime/State;
    .local p4, "composeNavigator":Landroidx/navigation/compose/ComposeNavigator;
    move-object v13, v4

    .line 335
    .local v13, "dialogNavigator":Landroidx/navigation/compose/DialogNavigator;
    const/4 v0, 0x0

    invoke-static {v13, v12, v0}, Landroidx/navigation/compose/DialogHostKt;->DialogHost(Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_19
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-nez v9, :cond_1a

    move-object/from16 v23, v11

    goto :goto_14

    :cond_1a
    new-instance v18, Landroidx/navigation/compose/NavHostKt$NavHost$17;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v25

    move-object v6, v11

    move-object/from16 v7, v28

    move-object/from16 v8, v29

    move-object/from16 v23, v11

    move-object v11, v9

    .end local v11    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v23, "exitTransition":Lkotlin/jvm/functions/Function1;
    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/navigation/compose/NavHostKt$NavHost$17;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    move-object/from16 v0, v18

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 336
    :goto_14
    return-void

    .line 199
    .end local v16    # "viewModelStoreOwner":Landroidx/lifecycle/ViewModelStoreOwner;
    .end local v17    # "currentBackStack$delegate":Landroidx/compose/runtime/State;
    .end local v19    # "saveableStateHolder":Landroidx/compose/runtime/saveable/SaveableStateHolder;
    .end local v20    # "visibleEntries$delegate":Landroidx/compose/runtime/State;
    .end local v21    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v22    # "allVisibleEntries$delegate":Landroidx/compose/runtime/State;
    .end local v23    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .end local v25    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .end local v26    # "zIndices":Ljava/util/Map;
    .end local v28    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .end local v29    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .end local p4    # "composeNavigator":Landroidx/navigation/compose/ComposeNavigator;
    .local v5, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .local v6, "$dirty":I
    .local v7, "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v8, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v9, "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v15, "enterTransition":Lkotlin/jvm/functions/Function1;
    :cond_1b
    const/4 v0, 0x0

    .line 200
    .local v0, "$i$a$-checkNotNull-NavHostKt$NavHost$viewModelStoreOwner$1":I
    nop

    .line 199
    .end local v0    # "$i$a$-checkNotNull-NavHostKt$NavHost$viewModelStoreOwner$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NavHost requires a ViewModelStoreOwner to be provided via LocalViewModelStoreOwner"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final NavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 25
    .param p0, "navController"    # Landroidx/navigation/NavHostController;
    .param p1, "startDestination"    # Ljava/lang/String;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "contentAlignment"    # Landroidx/compose/ui/Alignment;
    .param p4, "route"    # Ljava/lang/String;
    .param p5, "enterTransition"    # Lkotlin/jvm/functions/Function1;
    .param p6, "exitTransition"    # Lkotlin/jvm/functions/Function1;
    .param p7, "popEnterTransition"    # Lkotlin/jvm/functions/Function1;
    .param p8, "popExitTransition"    # Lkotlin/jvm/functions/Function1;
    .param p9, "builder"    # Lkotlin/jvm/functions/Function1;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavHostController;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Alignment;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;+",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;+",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;+",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;+",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavGraphBuilder;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 127
    move-object/from16 v13, p1

    move-object/from16 v14, p9

    move/from16 v12, p12

    const v0, 0x1876b5e3

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(NavHost)P(5,9,4,1,8,2,3,6,7)129@5380L126,127@5340L320:NavHost.kt#opm8kd"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p11

    .local v1, "$dirty":I
    and-int/lit8 v2, v12, 0x4

    if-eqz v2, :cond_0

    .line 115
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    move-object/from16 v16, v2

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_0

    .line 127
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_0
    move-object/from16 v16, p2

    .line 115
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    :goto_0
    and-int/lit8 v2, v12, 0x8

    if-eqz v2, :cond_1

    .line 116
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v2

    move-object/from16 v17, v2

    .end local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v2, "contentAlignment":Landroidx/compose/ui/Alignment;
    goto :goto_1

    .line 115
    .end local v2    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .restart local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    :cond_1
    move-object/from16 v17, p3

    .line 116
    .end local p3    # "contentAlignment":Landroidx/compose/ui/Alignment;
    .local v17, "contentAlignment":Landroidx/compose/ui/Alignment;
    :goto_1
    and-int/lit8 v2, v12, 0x10

    if-eqz v2, :cond_2

    .line 117
    const/4 v2, 0x0

    move-object v11, v2

    .end local p4    # "route":Ljava/lang/String;
    .local v2, "route":Ljava/lang/String;
    goto :goto_2

    .line 116
    .end local v2    # "route":Ljava/lang/String;
    .restart local p4    # "route":Ljava/lang/String;
    :cond_2
    move-object/from16 v11, p4

    .line 117
    .end local p4    # "route":Ljava/lang/String;
    .local v11, "route":Ljava/lang/String;
    :goto_2
    and-int/lit8 v2, v12, 0x20

    if-eqz v2, :cond_3

    .line 119
    sget-object v2, Landroidx/navigation/compose/NavHostKt$NavHost$3;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$3;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object/from16 v18, v2

    .end local p5    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v2, "enterTransition":Lkotlin/jvm/functions/Function1;
    goto :goto_3

    .line 117
    .end local v2    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .restart local p5    # "enterTransition":Lkotlin/jvm/functions/Function1;
    :cond_3
    move-object/from16 v18, p5

    .line 119
    .end local p5    # "enterTransition":Lkotlin/jvm/functions/Function1;
    .local v18, "enterTransition":Lkotlin/jvm/functions/Function1;
    :goto_3
    and-int/lit8 v2, v12, 0x40

    if-eqz v2, :cond_4

    .line 121
    sget-object v2, Landroidx/navigation/compose/NavHostKt$NavHost$4;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$4;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object/from16 v19, v2

    .end local p6    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v2, "exitTransition":Lkotlin/jvm/functions/Function1;
    goto :goto_4

    .line 119
    .end local v2    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .restart local p6    # "exitTransition":Lkotlin/jvm/functions/Function1;
    :cond_4
    move-object/from16 v19, p6

    .line 121
    .end local p6    # "exitTransition":Lkotlin/jvm/functions/Function1;
    .local v19, "exitTransition":Lkotlin/jvm/functions/Function1;
    :goto_4
    and-int/lit16 v2, v12, 0x80

    if-eqz v2, :cond_5

    .line 123
    move-object/from16 v2, v18

    .end local p7    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v2, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    const v3, -0x1c00001

    and-int/2addr v1, v3

    move-object/from16 v20, v2

    goto :goto_5

    .line 121
    .end local v2    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .restart local p7    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    :cond_5
    move-object/from16 v20, p7

    .line 123
    .end local p7    # "popEnterTransition":Lkotlin/jvm/functions/Function1;
    .local v20, "popEnterTransition":Lkotlin/jvm/functions/Function1;
    :goto_5
    and-int/lit16 v2, v12, 0x100

    if-eqz v2, :cond_6

    .line 125
    move-object/from16 v2, v19

    .end local p8    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v2, "popExitTransition":Lkotlin/jvm/functions/Function1;
    const v3, -0xe000001

    and-int/2addr v1, v3

    move v10, v1

    move-object/from16 v21, v2

    goto :goto_6

    .line 123
    .end local v2    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .restart local p8    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    :cond_6
    move-object/from16 v21, p8

    move v10, v1

    .line 125
    .end local v1    # "$dirty":I
    .end local p8    # "popExitTransition":Lkotlin/jvm/functions/Function1;
    .local v10, "$dirty":I
    .local v21, "popExitTransition":Lkotlin/jvm/functions/Function1;
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 127
    const/4 v1, -0x1

    const-string v2, "androidx.navigation.compose.NavHost (NavHost.kt:126)"

    invoke-static {v0, v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 129
    :cond_7
    shr-int/lit8 v0, v10, 0xc

    and-int/lit8 v0, v0, 0xe

    and-int/lit8 v1, v10, 0x70

    or-int/2addr v0, v1

    shr-int/lit8 v1, v10, 0x15

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v0, v1

    .line 130
    nop

    .local v0, "$changed$iv":I
    const/4 v1, 0x0

    .local v1, "$i$f$remember":I
    const v2, 0x607fb4c4

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {v15, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 382
    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .line 383
    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 382
    or-int/2addr v2, v3

    .line 384
    invoke-interface {v15, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 382
    or-int/2addr v2, v3

    .line 385
    move-object v3, v15

    .local v2, "invalid$iv$iv":Z
    .local v3, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 386
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 387
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v2, :cond_9

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_8

    goto :goto_7

    .line 394
    :cond_8
    move/from16 p2, v0

    move/from16 p3, v1

    move-object v0, v5

    goto :goto_8

    .line 388
    :cond_9
    :goto_7
    const/4 v7, 0x0

    .line 131
    .local v7, "$i$a$-remember-NavHostKt$NavHost$5":I
    move-object/from16 v8, p0

    check-cast v8, Landroidx/navigation/NavController;

    .local v8, "$this$createGraph$iv":Landroidx/navigation/NavController;
    const/4 v9, 0x0

    .line 389
    .local v9, "$i$f$createGraph":I
    move/from16 p2, v0

    .end local v0    # "$changed$iv":I
    .local p2, "$changed$iv":I
    invoke-virtual {v8}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    .local v0, "$this$navigation$iv$iv":Landroidx/navigation/NavigatorProvider;
    const/16 v22, 0x0

    .line 390
    .local v22, "$i$f$navigation":I
    move/from16 p3, v1

    .end local v1    # "$i$f$remember":I
    .local p3, "$i$f$remember":I
    new-instance v1, Landroidx/navigation/NavGraphBuilder;

    invoke-direct {v1, v0, v13, v11}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    invoke-virtual {v1}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v0

    .line 389
    .end local v0    # "$this$navigation$iv$iv":Landroidx/navigation/NavigatorProvider;
    .end local v22    # "$i$f$navigation":I
    nop

    .line 131
    .end local v8    # "$this$createGraph$iv":Landroidx/navigation/NavController;
    .end local v9    # "$i$f$createGraph":I
    nop

    .line 388
    .end local v7    # "$i$a$-remember-NavHostKt$NavHost$5":I
    nop

    .line 392
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 393
    nop

    .line 387
    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    :goto_8
    nop

    .line 386
    .end local v5    # "it$iv$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 385
    .end local v2    # "invalid$iv$iv":Z
    .end local v3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local p2    # "$changed$iv":I
    .end local p3    # "$i$f$remember":I
    move-object v2, v0

    check-cast v2, Landroidx/navigation/NavGraph;

    .line 133
    nop

    .line 134
    nop

    .line 135
    nop

    .line 136
    nop

    .line 137
    nop

    .line 138
    and-int/lit16 v0, v10, 0x380

    or-int/lit8 v0, v0, 0x48

    and-int/lit16 v1, v10, 0x1c00

    or-int/2addr v0, v1

    shr-int/lit8 v1, v10, 0x3

    const v3, 0xe000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    shr-int/lit8 v1, v10, 0x3

    const/high16 v3, 0x70000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    shr-int/lit8 v1, v10, 0x3

    const/high16 v3, 0x380000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    const/high16 v1, 0x1c00000

    shr-int/lit8 v3, v10, 0x3

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    const/16 v22, 0x0

    .line 128
    move-object/from16 v1, p0

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object v9, v15

    move/from16 v23, v10

    .end local v10    # "$dirty":I
    .local v23, "$dirty":I
    move v10, v0

    move-object/from16 v24, v11

    .end local v11    # "route":Ljava/lang/String;
    .local v24, "route":Ljava/lang/String;
    move/from16 v11, v22

    invoke-static/range {v1 .. v11}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_a
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-nez v11, :cond_b

    goto :goto_9

    :cond_b
    new-instance v22, Landroidx/navigation/compose/NavHostKt$NavHost$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v24

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v10, p9

    move-object v13, v11

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/navigation/compose/NavHostKt$NavHost$6;-><init>(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    move-object/from16 v0, v22

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 140
    :goto_9
    return-void
.end method

.method public static final synthetic NavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 22
    .param p0, "navController"    # Landroidx/navigation/NavHostController;
    .param p1, "startDestination"    # Ljava/lang/String;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "route"    # Ljava/lang/String;
    .param p4, "builder"    # Lkotlin/jvm/functions/Function1;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of NavHost that supports AnimatedContent"
    .end annotation

    .line 81
    move-object/from16 v8, p1

    move-object/from16 v9, p4

    const v0, 0x8741dc0

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(NavHost)P(2,4,1,3)83@3291L126,81@3251L190:NavHost.kt#opm8kd"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v6, p6

    .local v6, "$dirty":I
    and-int/lit8 v1, p7, 0x4

    if-eqz v1, :cond_0

    .line 78
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v21, v1

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_0

    .line 81
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_0
    move-object/from16 v21, p2

    .line 78
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v21, "modifier":Landroidx/compose/ui/Modifier;
    :goto_0
    and-int/lit8 v1, p7, 0x8

    if-eqz v1, :cond_1

    .line 79
    const/4 v1, 0x0

    move-object v5, v1

    .end local p3    # "route":Ljava/lang/String;
    .local v1, "route":Ljava/lang/String;
    goto :goto_1

    .line 78
    .end local v1    # "route":Ljava/lang/String;
    .restart local p3    # "route":Ljava/lang/String;
    :cond_1
    move-object/from16 v5, p3

    .line 79
    .end local p3    # "route":Ljava/lang/String;
    .local v5, "route":Ljava/lang/String;
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    const/4 v1, -0x1

    const-string v2, "androidx.navigation.compose.NavHost (NavHost.kt:80)"

    invoke-static {v0, v6, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 83
    :cond_2
    shr-int/lit8 v0, v6, 0x9

    and-int/lit8 v0, v0, 0xe

    and-int/lit8 v1, v6, 0x70

    or-int/2addr v0, v1

    shr-int/lit8 v1, v6, 0x6

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v0, v1

    .line 84
    nop

    .local v0, "$changed$iv":I
    const/4 v1, 0x0

    .local v1, "$i$f$remember":I
    const v2, 0x607fb4c4

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {v7, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 369
    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .line 370
    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 369
    or-int/2addr v2, v3

    .line 371
    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 369
    or-int/2addr v2, v3

    .line 372
    nop

    .local v2, "invalid$iv$iv":Z
    move-object v3, v7

    .local v3, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 373
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 374
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v2, :cond_4

    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_3

    goto :goto_2

    .line 381
    :cond_3
    move/from16 p2, v0

    move-object v0, v10

    goto :goto_3

    .line 375
    :cond_4
    :goto_2
    const/4 v12, 0x0

    .line 85
    .local v12, "$i$a$-remember-NavHostKt$NavHost$1":I
    move-object/from16 v13, p0

    check-cast v13, Landroidx/navigation/NavController;

    .local v13, "$this$createGraph$iv":Landroidx/navigation/NavController;
    const/4 v14, 0x0

    .line 376
    .local v14, "$i$f$createGraph":I
    invoke-virtual {v13}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v15

    .local v15, "$this$navigation$iv$iv":Landroidx/navigation/NavigatorProvider;
    const/16 v16, 0x0

    .line 377
    .local v16, "$i$f$navigation":I
    move/from16 p2, v0

    .end local v0    # "$changed$iv":I
    .local p2, "$changed$iv":I
    new-instance v0, Landroidx/navigation/NavGraphBuilder;

    invoke-direct {v0, v15, v8, v5}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-virtual {v0}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v0

    .line 376
    .end local v15    # "$this$navigation$iv$iv":Landroidx/navigation/NavigatorProvider;
    .end local v16    # "$i$f$navigation":I
    nop

    .line 85
    .end local v13    # "$this$createGraph$iv":Landroidx/navigation/NavController;
    .end local v14    # "$i$f$createGraph":I
    nop

    .line 375
    .end local v12    # "$i$a$-remember-NavHostKt$NavHost$1":I
    nop

    .line 379
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 380
    nop

    .line 374
    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    :goto_3
    nop

    .line 373
    .end local v10    # "it$iv$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 372
    .end local v2    # "invalid$iv$iv":Z
    .end local v3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v1    # "$i$f$remember":I
    .end local p2    # "$changed$iv":I
    move-object v11, v0

    check-cast v11, Landroidx/navigation/NavGraph;

    .line 87
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    and-int/lit16 v0, v6, 0x380

    or-int/lit8 v19, v0, 0x48

    const/16 v20, 0xf8

    .line 82
    move-object/from16 v10, p0

    move-object/from16 v12, v21

    move-object/from16 v18, v7

    invoke-static/range {v10 .. v20}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-nez v10, :cond_6

    move-object v12, v5

    move v13, v6

    move-object v14, v7

    goto :goto_4

    :cond_6
    new-instance v11, Landroidx/navigation/compose/NavHostKt$NavHost$2;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v21

    move-object v4, v5

    move-object v12, v5

    .end local v5    # "route":Ljava/lang/String;
    .local v12, "route":Ljava/lang/String;
    move-object/from16 v5, p4

    move v13, v6

    .end local v6    # "$dirty":I
    .local v13, "$dirty":I
    move/from16 v6, p6

    move-object v14, v7

    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/navigation/compose/NavHostKt$NavHost$2;-><init>(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;II)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 89
    :goto_4
    return-void
.end method

.method private static final NavHost$lambda$3(Landroidx/compose/runtime/State;)Ljava/util/List;
    .locals 4
    .param p0, "$currentBackStack$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    .line 214
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 440
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/util/List;

    .line 214
    return-object v0
.end method

.method private static final NavHost$lambda$4(Landroidx/compose/runtime/State;)Ljava/util/List;
    .locals 4
    .param p0, "$allVisibleEntries$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    .line 228
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 441
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/util/List;

    .line 228
    return-object v0
.end method

.method private static final NavHost$lambda$6(Landroidx/compose/runtime/State;)Ljava/util/List;
    .locals 4
    .param p0, "$visibleEntries$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    .line 231
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 442
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/util/List;

    .line 231
    return-object v0
.end method

.method public static final synthetic access$NavHost$lambda$4(Landroidx/compose/runtime/State;)Ljava/util/List;
    .locals 1
    .param p0, "$allVisibleEntries$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$4(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$NavHost$lambda$6(Landroidx/compose/runtime/State;)Ljava/util/List;
    .locals 1
    .param p0, "$visibleEntries$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$6(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$createEnterTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/EnterTransition;
    .locals 1
    .param p0, "$receiver"    # Landroidx/navigation/NavDestination;
    .param p1, "scope"    # Landroidx/compose/animation/AnimatedContentTransitionScope;

    .line 1
    invoke-static {p0, p1}, Landroidx/navigation/compose/NavHostKt;->createEnterTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$createExitTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ExitTransition;
    .locals 1
    .param p0, "$receiver"    # Landroidx/navigation/NavDestination;
    .param p1, "scope"    # Landroidx/compose/animation/AnimatedContentTransitionScope;

    .line 1
    invoke-static {p0, p1}, Landroidx/navigation/compose/NavHostKt;->createExitTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$createPopEnterTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/EnterTransition;
    .locals 1
    .param p0, "$receiver"    # Landroidx/navigation/NavDestination;
    .param p1, "scope"    # Landroidx/compose/animation/AnimatedContentTransitionScope;

    .line 1
    invoke-static {p0, p1}, Landroidx/navigation/compose/NavHostKt;->createPopEnterTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$createPopExitTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ExitTransition;
    .locals 1
    .param p0, "$receiver"    # Landroidx/navigation/NavDestination;
    .param p1, "scope"    # Landroidx/compose/animation/AnimatedContentTransitionScope;

    .line 1
    invoke-static {p0, p1}, Landroidx/navigation/compose/NavHostKt;->createPopExitTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    return-object v0
.end method

.method private static final createEnterTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/EnterTransition;
    .locals 2
    .param p0, "$this$createEnterTransition"    # Landroidx/navigation/NavDestination;
    .param p1, "scope"    # Landroidx/compose/animation/AnimatedContentTransitionScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavDestination;",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/compose/animation/EnterTransition;"
        }
    .end annotation

    .line 340
    nop

    .line 341
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    invoke-virtual {v0}, Landroidx/navigation/compose/ComposeNavigator$Destination;->getEnterTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/EnterTransition;

    goto :goto_0

    .line 342
    :cond_0
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    invoke-virtual {v0}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->getEnterTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/EnterTransition;

    goto :goto_0

    .line 343
    :cond_1
    nop

    .line 344
    :cond_2
    :goto_0
    return-object v1
.end method

.method private static final createExitTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ExitTransition;
    .locals 2
    .param p0, "$this$createExitTransition"    # Landroidx/navigation/NavDestination;
    .param p1, "scope"    # Landroidx/compose/animation/AnimatedContentTransitionScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavDestination;",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/compose/animation/ExitTransition;"
        }
    .end annotation

    .line 348
    nop

    .line 349
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    invoke-virtual {v0}, Landroidx/navigation/compose/ComposeNavigator$Destination;->getExitTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/ExitTransition;

    goto :goto_0

    .line 350
    :cond_0
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    invoke-virtual {v0}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->getExitTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/ExitTransition;

    goto :goto_0

    .line 351
    :cond_1
    nop

    .line 352
    :cond_2
    :goto_0
    return-object v1
.end method

.method private static final createPopEnterTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/EnterTransition;
    .locals 2
    .param p0, "$this$createPopEnterTransition"    # Landroidx/navigation/NavDestination;
    .param p1, "scope"    # Landroidx/compose/animation/AnimatedContentTransitionScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavDestination;",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/compose/animation/EnterTransition;"
        }
    .end annotation

    .line 356
    nop

    .line 357
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    invoke-virtual {v0}, Landroidx/navigation/compose/ComposeNavigator$Destination;->getPopEnterTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/EnterTransition;

    goto :goto_0

    .line 358
    :cond_0
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    invoke-virtual {v0}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->getPopEnterTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/EnterTransition;

    goto :goto_0

    .line 359
    :cond_1
    nop

    .line 360
    :cond_2
    :goto_0
    return-object v1
.end method

.method private static final createPopExitTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ExitTransition;
    .locals 2
    .param p0, "$this$createPopExitTransition"    # Landroidx/navigation/NavDestination;
    .param p1, "scope"    # Landroidx/compose/animation/AnimatedContentTransitionScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavDestination;",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/compose/animation/ExitTransition;"
        }
    .end annotation

    .line 363
    nop

    .line 364
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    invoke-virtual {v0}, Landroidx/navigation/compose/ComposeNavigator$Destination;->getPopExitTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/ExitTransition;

    goto :goto_0

    .line 365
    :cond_0
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    invoke-virtual {v0}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->getPopExitTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/ExitTransition;

    goto :goto_0

    .line 366
    :cond_1
    nop

    .line 367
    :cond_2
    :goto_0
    return-object v1
.end method
