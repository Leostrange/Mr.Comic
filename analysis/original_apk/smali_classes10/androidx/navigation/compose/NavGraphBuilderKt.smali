.class public final Landroidx/navigation/compose/NavGraphBuilderKt;
.super Ljava/lang/Object;
.source "NavGraphBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavGraphBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavGraphBuilder.kt\nandroidx/navigation/compose/NavGraphBuilderKt\n+ 2 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,236:1\n161#2:237\n161#2:242\n161#2:255\n1855#3,2:238\n1855#3,2:240\n1855#3,2:243\n1855#3,2:245\n1855#3,2:247\n1855#3,2:249\n1855#3,2:251\n1855#3,2:253\n1855#3,2:256\n1855#3,2:258\n*S KotlinDebug\n*F\n+ 1 NavGraphBuilder.kt\nandroidx/navigation/compose/NavGraphBuilderKt\n*L\n51#1:237\n96#1:242\n222#1:255\n56#1:238,2\n59#1:240,2\n100#1:243,2\n103#1:245,2\n138#1:247,2\n141#1:249,2\n183#1:251,2\n186#1:253,2\n227#1:256,2\n230#1:258,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001aR\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00010\u000b\u00a2\u0006\u0002\u0008\rH\u0007\u00a2\u0006\u0002\u0010\u000e\u001a\u0083\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062(\u0008\u0002\u0010\u000f\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u0014\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u0016\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u0017\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u00132\"\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00010\u0018\u00a2\u0006\u0002\u0008\r\u00a2\u0006\u0002\u0008\u0013\u00a2\u0006\u0002\u0010\u001a\u001aZ\u0010\u001b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00010\u000b\u00a2\u0006\u0002\u0008\r\u00a2\u0006\u0002\u0010\u001e\u001a\u00e7\u0001\u0010\u001f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010 \u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062#\u0008\u0002\u0010\u000f\u001a\u001d\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132#\u0008\u0002\u0010\u0014\u001a\u001d\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132#\u0008\u0002\u0010\u0016\u001a\u001d\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132#\u0008\u0002\u0010\u0017\u001a\u001d\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132\u0017\u0010!\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u000b\u00a2\u0006\u0002\u0008\u0013\u001aU\u0010\u001f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010 \u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062\u0017\u0010!\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u000b\u00a2\u0006\u0002\u0008\u0013H\u0007\u00a8\u0006\""
    }
    d2 = {
        "composable",
        "",
        "Landroidx/navigation/NavGraphBuilder;",
        "route",
        "",
        "arguments",
        "",
        "Landroidx/navigation/NamedNavArgument;",
        "deepLinks",
        "Landroidx/navigation/NavDeepLink;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/navigation/NavBackStackEntry;",
        "Landroidx/compose/runtime/Composable;",
        "(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V",
        "enterTransition",
        "Landroidx/compose/animation/AnimatedContentTransitionScope;",
        "Landroidx/compose/animation/EnterTransition;",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "Lkotlin/ExtensionFunctionType;",
        "exitTransition",
        "Landroidx/compose/animation/ExitTransition;",
        "popEnterTransition",
        "popExitTransition",
        "Lkotlin/Function2;",
        "Landroidx/compose/animation/AnimatedContentScope;",
        "(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V",
        "dialog",
        "dialogProperties",
        "Landroidx/compose/ui/window/DialogProperties;",
        "(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function3;)V",
        "navigation",
        "startDestination",
        "builder",
        "navigation-compose_release"
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
.method public static final composable(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V
    .locals 12
    .param p0, "$this$composable"    # Landroidx/navigation/NavGraphBuilder;
    .param p1, "route"    # Ljava/lang/String;
    .param p2, "arguments"    # Ljava/util/List;
    .param p3, "deepLinks"    # Ljava/util/List;
    .param p4, "enterTransition"    # Lkotlin/jvm/functions/Function1;
    .param p5, "exitTransition"    # Lkotlin/jvm/functions/Function1;
    .param p6, "popEnterTransition"    # Lkotlin/jvm/functions/Function1;
    .param p7, "popExitTransition"    # Lkotlin/jvm/functions/Function1;
    .param p8, "content"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavGraphBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/navigation/NamedNavArgument;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/navigation/NavDeepLink;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/animation/AnimatedContentScope;",
            "-",
            "Landroidx/navigation/NavBackStackEntry;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 94
    nop

    .line 95
    new-instance v0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    .line 96
    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    .local v1, "$this$get$iv":Landroidx/navigation/NavigatorProvider;
    const-class v2, Landroidx/navigation/compose/ComposeNavigator;

    .local v2, "clazz$iv":Ljava/lang/Class;
    const/4 v3, 0x0

    .line 242
    .local v3, "$i$f$get":I
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v1

    .end local v1    # "$this$get$iv":Landroidx/navigation/NavigatorProvider;
    .end local v2    # "clazz$iv":Ljava/lang/Class;
    .end local v3    # "$i$f$get":I
    check-cast v1, Landroidx/navigation/compose/ComposeNavigator;

    .line 97
    nop

    .line 95
    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Landroidx/navigation/compose/ComposeNavigator$Destination;-><init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function4;)V

    .line 98
    move-object v1, v0

    .local v1, "$this$composable_u24lambda_u245":Landroidx/navigation/compose/ComposeNavigator$Destination;
    const/4 v3, 0x0

    .line 99
    .local v3, "$i$a$-apply-NavGraphBuilderKt$composable$3":I
    move-object v4, p1

    invoke-virtual {v1, p1}, Landroidx/navigation/compose/ComposeNavigator$Destination;->setRoute(Ljava/lang/String;)V

    .line 100
    move-object v5, p2

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 243
    .local v6, "$i$f$forEach":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/navigation/NamedNavArgument;

    const/4 v10, 0x0

    .line 100
    .local v10, "$i$a$-forEach-NavGraphBuilderKt$composable$3$1":I
    invoke-virtual {v9}, Landroidx/navigation/NamedNavArgument;->component1()Ljava/lang/String;

    move-result-object v11

    .local v11, "argumentName":Ljava/lang/String;
    invoke-virtual {v9}, Landroidx/navigation/NamedNavArgument;->component2()Landroidx/navigation/NavArgument;

    move-result-object v9

    .line 101
    .local v9, "argument":Landroidx/navigation/NavArgument;
    invoke-virtual {v1, v11, v9}, Landroidx/navigation/compose/ComposeNavigator$Destination;->addArgument(Ljava/lang/String;Landroidx/navigation/NavArgument;)V

    .line 102
    nop

    .line 243
    .end local v9    # "argument":Landroidx/navigation/NavArgument;
    .end local v10    # "$i$a$-forEach-NavGraphBuilderKt$composable$3$1":I
    .end local v11    # "argumentName":Ljava/lang/String;
    nop

    .end local v8    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 244
    :cond_0
    nop

    .line 103
    .end local v5    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach":I
    move-object v5, p3

    check-cast v5, Ljava/lang/Iterable;

    .restart local v5    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 245
    .restart local v6    # "$i$f$forEach":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/navigation/NavDeepLink;

    .local v9, "deepLink":Landroidx/navigation/NavDeepLink;
    const/4 v10, 0x0

    .line 104
    .local v10, "$i$a$-forEach-NavGraphBuilderKt$composable$3$2":I
    invoke-virtual {v1, v9}, Landroidx/navigation/compose/ComposeNavigator$Destination;->addDeepLink(Landroidx/navigation/NavDeepLink;)V

    .line 105
    nop

    .line 245
    .end local v9    # "deepLink":Landroidx/navigation/NavDeepLink;
    .end local v10    # "$i$a$-forEach-NavGraphBuilderKt$composable$3$2":I
    nop

    .end local v8    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 246
    :cond_1
    nop

    .line 106
    .end local v5    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach":I
    move-object/from16 v5, p4

    invoke-virtual {v1, v5}, Landroidx/navigation/compose/ComposeNavigator$Destination;->setEnterTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 107
    move-object/from16 v6, p5

    invoke-virtual {v1, v6}, Landroidx/navigation/compose/ComposeNavigator$Destination;->setExitTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 108
    move-object/from16 v7, p6

    invoke-virtual {v1, v7}, Landroidx/navigation/compose/ComposeNavigator$Destination;->setPopEnterTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 109
    move-object/from16 v8, p7

    invoke-virtual {v1, v8}, Landroidx/navigation/compose/ComposeNavigator$Destination;->setPopExitTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 110
    nop

    .line 98
    .end local v1    # "$this$composable_u24lambda_u245":Landroidx/navigation/compose/ComposeNavigator$Destination;
    .end local v3    # "$i$a$-apply-NavGraphBuilderKt$composable$3":I
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 94
    move-object v1, p0

    invoke-virtual {p0, v0}, Landroidx/navigation/NavGraphBuilder;->addDestination(Landroidx/navigation/NavDestination;)V

    .line 112
    return-void
.end method

.method public static final synthetic composable(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V
    .locals 10
    .param p0, "$this$composable"    # Landroidx/navigation/NavGraphBuilder;
    .param p1, "route"    # Ljava/lang/String;
    .param p2, "arguments"    # Ljava/util/List;
    .param p3, "deepLinks"    # Ljava/util/List;
    .param p4, "content"    # Lkotlin/jvm/functions/Function3;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of composable builder that supports AnimatedContent"
    .end annotation

    .line 50
    nop

    .line 51
    new-instance v0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    .local v1, "$this$get$iv":Landroidx/navigation/NavigatorProvider;
    const-class v2, Landroidx/navigation/compose/ComposeNavigator;

    .local v2, "clazz$iv":Ljava/lang/Class;
    const/4 v3, 0x0

    .line 237
    .local v3, "$i$f$get":I
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v1

    .end local v1    # "$this$get$iv":Landroidx/navigation/NavigatorProvider;
    .end local v2    # "clazz$iv":Ljava/lang/Class;
    .end local v3    # "$i$f$get":I
    check-cast v1, Landroidx/navigation/compose/ComposeNavigator;

    .line 51
    new-instance v2, Landroidx/navigation/compose/NavGraphBuilderKt$composable$1;

    invoke-direct {v2, p4}, Landroidx/navigation/compose/NavGraphBuilderKt$composable$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    const v3, 0x1cdc15aa

    const/4 v4, 0x1

    invoke-static {v3, v4, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function4;

    invoke-direct {v0, v1, v2}, Landroidx/navigation/compose/ComposeNavigator$Destination;-><init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function4;)V

    .line 54
    move-object v1, v0

    .local v1, "$this$composable_u24lambda_u242":Landroidx/navigation/compose/ComposeNavigator$Destination;
    const/4 v2, 0x0

    .line 55
    .local v2, "$i$a$-apply-NavGraphBuilderKt$composable$2":I
    invoke-virtual {v1, p1}, Landroidx/navigation/compose/ComposeNavigator$Destination;->setRoute(Ljava/lang/String;)V

    .line 56
    move-object v3, p2

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 238
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/navigation/NamedNavArgument;

    const/4 v8, 0x0

    .line 56
    .local v8, "$i$a$-forEach-NavGraphBuilderKt$composable$2$1":I
    invoke-virtual {v7}, Landroidx/navigation/NamedNavArgument;->component1()Ljava/lang/String;

    move-result-object v9

    .local v9, "argumentName":Ljava/lang/String;
    invoke-virtual {v7}, Landroidx/navigation/NamedNavArgument;->component2()Landroidx/navigation/NavArgument;

    move-result-object v7

    .line 57
    .local v7, "argument":Landroidx/navigation/NavArgument;
    invoke-virtual {v1, v9, v7}, Landroidx/navigation/compose/ComposeNavigator$Destination;->addArgument(Ljava/lang/String;Landroidx/navigation/NavArgument;)V

    .line 58
    nop

    .line 238
    .end local v7    # "argument":Landroidx/navigation/NavArgument;
    .end local v8    # "$i$a$-forEach-NavGraphBuilderKt$composable$2$1":I
    .end local v9    # "argumentName":Ljava/lang/String;
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 239
    :cond_0
    nop

    .line 59
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    move-object v3, p3

    check-cast v3, Ljava/lang/Iterable;

    .restart local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 240
    .restart local v4    # "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/navigation/NavDeepLink;

    .local v7, "deepLink":Landroidx/navigation/NavDeepLink;
    const/4 v8, 0x0

    .line 60
    .local v8, "$i$a$-forEach-NavGraphBuilderKt$composable$2$2":I
    invoke-virtual {v1, v7}, Landroidx/navigation/compose/ComposeNavigator$Destination;->addDeepLink(Landroidx/navigation/NavDeepLink;)V

    .line 61
    nop

    .line 240
    .end local v7    # "deepLink":Landroidx/navigation/NavDeepLink;
    .end local v8    # "$i$a$-forEach-NavGraphBuilderKt$composable$2$2":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 241
    :cond_1
    nop

    .line 62
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 54
    .end local v1    # "$this$composable_u24lambda_u242":Landroidx/navigation/compose/ComposeNavigator$Destination;
    .end local v2    # "$i$a$-apply-NavGraphBuilderKt$composable$2":I
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 50
    invoke-virtual {p0, v0}, Landroidx/navigation/NavGraphBuilder;->addDestination(Landroidx/navigation/NavDestination;)V

    .line 64
    return-void
.end method

.method public static synthetic composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V
    .locals 10

    .line 78
    and-int/lit8 v0, p9, 0x2

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 78
    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_1

    .line 81
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    .line 78
    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 v0, p9, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 83
    move-object v5, v1

    goto :goto_2

    .line 78
    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_3

    .line 85
    move-object v6, v1

    goto :goto_3

    .line 78
    :cond_3
    move-object v6, p5

    :goto_3
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_4

    .line 88
    move-object v7, v5

    goto :goto_4

    .line 78
    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_5

    .line 91
    move-object v8, v6

    goto :goto_5

    .line 78
    :cond_5
    move-object/from16 v8, p7

    :goto_5
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v9}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public static synthetic composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V
    .locals 0

    .line 44
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 46
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 44
    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 47
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 44
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public static final dialog(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function3;)V
    .locals 10
    .param p0, "$this$dialog"    # Landroidx/navigation/NavGraphBuilder;
    .param p1, "route"    # Ljava/lang/String;
    .param p2, "arguments"    # Ljava/util/List;
    .param p3, "deepLinks"    # Ljava/util/List;
    .param p4, "dialogProperties"    # Landroidx/compose/ui/window/DialogProperties;
    .param p5, "content"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavGraphBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/navigation/NamedNavArgument;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/navigation/NavDeepLink;",
            ">;",
            "Landroidx/compose/ui/window/DialogProperties;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/navigation/NavBackStackEntry;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 220
    nop

    .line 221
    new-instance v0, Landroidx/navigation/compose/DialogNavigator$Destination;

    .line 222
    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    .local v1, "$this$get$iv":Landroidx/navigation/NavigatorProvider;
    const-class v2, Landroidx/navigation/compose/DialogNavigator;

    .local v2, "clazz$iv":Ljava/lang/Class;
    const/4 v3, 0x0

    .line 255
    .local v3, "$i$f$get":I
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v1

    .end local v1    # "$this$get$iv":Landroidx/navigation/NavigatorProvider;
    .end local v2    # "clazz$iv":Ljava/lang/Class;
    .end local v3    # "$i$f$get":I
    check-cast v1, Landroidx/navigation/compose/DialogNavigator;

    .line 223
    nop

    .line 224
    nop

    .line 221
    invoke-direct {v0, v1, p4, p5}, Landroidx/navigation/compose/DialogNavigator$Destination;-><init>(Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function3;)V

    .line 225
    move-object v1, v0

    .local v1, "$this$dialog_u24lambda_u2414":Landroidx/navigation/compose/DialogNavigator$Destination;
    const/4 v2, 0x0

    .line 226
    .local v2, "$i$a$-apply-NavGraphBuilderKt$dialog$1":I
    invoke-virtual {v1, p1}, Landroidx/navigation/compose/DialogNavigator$Destination;->setRoute(Ljava/lang/String;)V

    .line 227
    move-object v3, p2

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 256
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/navigation/NamedNavArgument;

    const/4 v8, 0x0

    .line 227
    .local v8, "$i$a$-forEach-NavGraphBuilderKt$dialog$1$1":I
    invoke-virtual {v7}, Landroidx/navigation/NamedNavArgument;->component1()Ljava/lang/String;

    move-result-object v9

    .local v9, "argumentName":Ljava/lang/String;
    invoke-virtual {v7}, Landroidx/navigation/NamedNavArgument;->component2()Landroidx/navigation/NavArgument;

    move-result-object v7

    .line 228
    .local v7, "argument":Landroidx/navigation/NavArgument;
    invoke-virtual {v1, v9, v7}, Landroidx/navigation/compose/DialogNavigator$Destination;->addArgument(Ljava/lang/String;Landroidx/navigation/NavArgument;)V

    .line 229
    nop

    .line 256
    .end local v7    # "argument":Landroidx/navigation/NavArgument;
    .end local v8    # "$i$a$-forEach-NavGraphBuilderKt$dialog$1$1":I
    .end local v9    # "argumentName":Ljava/lang/String;
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 257
    :cond_0
    nop

    .line 230
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    move-object v3, p3

    check-cast v3, Ljava/lang/Iterable;

    .restart local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 258
    .restart local v4    # "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/navigation/NavDeepLink;

    .local v7, "deepLink":Landroidx/navigation/NavDeepLink;
    const/4 v8, 0x0

    .line 231
    .local v8, "$i$a$-forEach-NavGraphBuilderKt$dialog$1$2":I
    invoke-virtual {v1, v7}, Landroidx/navigation/compose/DialogNavigator$Destination;->addDeepLink(Landroidx/navigation/NavDeepLink;)V

    .line 232
    nop

    .line 258
    .end local v7    # "deepLink":Landroidx/navigation/NavDeepLink;
    .end local v8    # "$i$a$-forEach-NavGraphBuilderKt$dialog$1$2":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 259
    :cond_1
    nop

    .line 233
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 225
    .end local v1    # "$this$dialog_u24lambda_u2414":Landroidx/navigation/compose/DialogNavigator$Destination;
    .end local v2    # "$i$a$-apply-NavGraphBuilderKt$dialog$1":I
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 220
    invoke-virtual {p0, v0}, Landroidx/navigation/NavGraphBuilder;->addDestination(Landroidx/navigation/NavDestination;)V

    .line 235
    return-void
.end method

.method public static synthetic dialog$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V
    .locals 11

    .line 213
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 213
    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_1

    .line 216
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    .line 213
    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_2

    .line 217
    new-instance v0, Landroidx/compose/ui/window/DialogProperties;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x7

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroidx/compose/ui/window/DialogProperties;-><init>(ZZLandroidx/compose/ui/window/SecureFlagPolicy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    .line 213
    :cond_2
    move-object v5, p4

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Landroidx/navigation/compose/NavGraphBuilderKt;->dialog(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public static final synthetic navigation(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 10
    .param p0, "$this$navigation"    # Landroidx/navigation/NavGraphBuilder;
    .param p1, "startDestination"    # Ljava/lang/String;
    .param p2, "route"    # Ljava/lang/String;
    .param p3, "arguments"    # Ljava/util/List;
    .param p4, "deepLinks"    # Ljava/util/List;
    .param p5, "builder"    # Lkotlin/jvm/functions/Function1;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of navigation builder that supports AnimatedContent"
    .end annotation

    .line 136
    nop

    .line 137
    new-instance v0, Landroidx/navigation/NavGraphBuilder;

    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p5, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$navigation_u24lambda_u248":Landroidx/navigation/NavGraph;
    const/4 v2, 0x0

    .line 138
    .local v2, "$i$a$-apply-NavGraphBuilderKt$navigation$1":I
    move-object v3, p3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 247
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/navigation/NamedNavArgument;

    const/4 v8, 0x0

    .line 138
    .local v8, "$i$a$-forEach-NavGraphBuilderKt$navigation$1$1":I
    invoke-virtual {v7}, Landroidx/navigation/NamedNavArgument;->component1()Ljava/lang/String;

    move-result-object v9

    .local v9, "argumentName":Ljava/lang/String;
    invoke-virtual {v7}, Landroidx/navigation/NamedNavArgument;->component2()Landroidx/navigation/NavArgument;

    move-result-object v7

    .line 139
    .local v7, "argument":Landroidx/navigation/NavArgument;
    invoke-virtual {v1, v9, v7}, Landroidx/navigation/NavGraph;->addArgument(Ljava/lang/String;Landroidx/navigation/NavArgument;)V

    .line 140
    nop

    .line 247
    .end local v7    # "argument":Landroidx/navigation/NavArgument;
    .end local v8    # "$i$a$-forEach-NavGraphBuilderKt$navigation$1$1":I
    .end local v9    # "argumentName":Ljava/lang/String;
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 248
    :cond_0
    nop

    .line 141
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    move-object v3, p4

    check-cast v3, Ljava/lang/Iterable;

    .restart local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 249
    .restart local v4    # "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/navigation/NavDeepLink;

    .local v7, "deepLink":Landroidx/navigation/NavDeepLink;
    const/4 v8, 0x0

    .line 142
    .local v8, "$i$a$-forEach-NavGraphBuilderKt$navigation$1$2":I
    invoke-virtual {v1, v7}, Landroidx/navigation/NavGraph;->addDeepLink(Landroidx/navigation/NavDeepLink;)V

    .line 143
    nop

    .line 249
    .end local v7    # "deepLink":Landroidx/navigation/NavDeepLink;
    .end local v8    # "$i$a$-forEach-NavGraphBuilderKt$navigation$1$2":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 250
    :cond_1
    nop

    .line 144
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 137
    .end local v1    # "$this$navigation_u24lambda_u248":Landroidx/navigation/NavGraph;
    .end local v2    # "$i$a$-apply-NavGraphBuilderKt$navigation$1":I
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 136
    invoke-virtual {p0, v0}, Landroidx/navigation/NavGraphBuilder;->addDestination(Landroidx/navigation/NavDestination;)V

    .line 146
    return-void
.end method

.method public static final navigation(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 13
    .param p0, "$this$navigation"    # Landroidx/navigation/NavGraphBuilder;
    .param p1, "startDestination"    # Ljava/lang/String;
    .param p2, "route"    # Ljava/lang/String;
    .param p3, "arguments"    # Ljava/util/List;
    .param p4, "deepLinks"    # Ljava/util/List;
    .param p5, "enterTransition"    # Lkotlin/jvm/functions/Function1;
    .param p6, "exitTransition"    # Lkotlin/jvm/functions/Function1;
    .param p7, "popEnterTransition"    # Lkotlin/jvm/functions/Function1;
    .param p8, "popExitTransition"    # Lkotlin/jvm/functions/Function1;
    .param p9, "builder"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavGraphBuilder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/navigation/NamedNavArgument;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/navigation/NavDeepLink;",
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
            ">;)V"
        }
    .end annotation

    .line 181
    nop

    .line 182
    new-instance v0, Landroidx/navigation/NavGraphBuilder;

    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    invoke-direct {v0, v1, p1, p2}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v0

    move-object v4, v0

    .local v4, "$this$navigation_u24lambda_u2411":Landroidx/navigation/NavGraph;
    const/4 v5, 0x0

    .line 183
    .local v5, "$i$a$-apply-NavGraphBuilderKt$navigation$2":I
    move-object/from16 v6, p3

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 251
    .local v7, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/navigation/NamedNavArgument;

    const/4 v11, 0x0

    .line 183
    .local v11, "$i$a$-forEach-NavGraphBuilderKt$navigation$2$1":I
    invoke-virtual {v10}, Landroidx/navigation/NamedNavArgument;->component1()Ljava/lang/String;

    move-result-object v12

    .local v12, "argumentName":Ljava/lang/String;
    invoke-virtual {v10}, Landroidx/navigation/NamedNavArgument;->component2()Landroidx/navigation/NavArgument;

    move-result-object v10

    .line 184
    .local v10, "argument":Landroidx/navigation/NavArgument;
    invoke-virtual {v4, v12, v10}, Landroidx/navigation/NavGraph;->addArgument(Ljava/lang/String;Landroidx/navigation/NavArgument;)V

    .line 185
    nop

    .line 251
    .end local v10    # "argument":Landroidx/navigation/NavArgument;
    .end local v11    # "$i$a$-forEach-NavGraphBuilderKt$navigation$2$1":I
    .end local v12    # "argumentName":Ljava/lang/String;
    nop

    .end local v9    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 252
    :cond_0
    nop

    .line 186
    .end local v6    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    move-object/from16 v6, p4

    check-cast v6, Ljava/lang/Iterable;

    .restart local v6    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 253
    .restart local v7    # "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .restart local v9    # "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/navigation/NavDeepLink;

    .local v10, "deepLink":Landroidx/navigation/NavDeepLink;
    const/4 v11, 0x0

    .line 187
    .local v11, "$i$a$-forEach-NavGraphBuilderKt$navigation$2$2":I
    invoke-virtual {v4, v10}, Landroidx/navigation/NavGraph;->addDeepLink(Landroidx/navigation/NavDeepLink;)V

    .line 188
    nop

    .line 253
    .end local v10    # "deepLink":Landroidx/navigation/NavDeepLink;
    .end local v11    # "$i$a$-forEach-NavGraphBuilderKt$navigation$2$2":I
    nop

    .end local v9    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 254
    :cond_1
    nop

    .line 189
    .end local v6    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    instance-of v6, v4, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    if-eqz v6, :cond_2

    .line 190
    move-object v6, v4

    check-cast v6, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    move-object/from16 v7, p5

    invoke-virtual {v6, v7}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->setEnterTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 191
    move-object v6, v4

    check-cast v6, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    move-object/from16 v8, p6

    invoke-virtual {v6, v8}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->setExitTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 192
    move-object v6, v4

    check-cast v6, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    move-object/from16 v9, p7

    invoke-virtual {v6, v9}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->setPopEnterTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 193
    move-object v6, v4

    check-cast v6, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    move-object/from16 v10, p8

    invoke-virtual {v6, v10}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->setPopExitTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    goto :goto_2

    .line 189
    :cond_2
    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 195
    :goto_2
    nop

    .line 182
    .end local v4    # "$this$navigation_u24lambda_u2411":Landroidx/navigation/NavGraph;
    .end local v5    # "$i$a$-apply-NavGraphBuilderKt$navigation$2":I
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 181
    move-object v4, p0

    invoke-virtual {p0, v0}, Landroidx/navigation/NavGraphBuilder;->addDestination(Landroidx/navigation/NavDestination;)V

    .line 197
    return-void
.end method

.method public static synthetic navigation$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6

    .line 129
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 132
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    move-object v3, p3

    goto :goto_0

    .line 129
    :cond_0
    move-object v3, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 133
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    move-object v4, p4

    goto :goto_1

    .line 129
    :cond_1
    move-object v4, p4

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroidx/navigation/compose/NavGraphBuilderKt;->navigation(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic navigation$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 12

    .line 164
    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 167
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    .line 164
    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 168
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    .line 164
    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 170
    move-object v7, v2

    goto :goto_2

    .line 164
    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 172
    move-object v8, v2

    goto :goto_3

    .line 164
    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 175
    move-object v9, v7

    goto :goto_4

    .line 164
    :cond_4
    move-object/from16 v9, p7

    :goto_4
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    .line 178
    move-object v10, v8

    goto :goto_5

    .line 164
    :cond_5
    move-object/from16 v10, p8

    :goto_5
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v11, p9

    invoke-static/range {v2 .. v11}, Landroidx/navigation/compose/NavGraphBuilderKt;->navigation(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
