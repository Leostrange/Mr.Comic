.class public final Landroidx/hilt/navigation/compose/HiltViewModelKt;
.super Ljava/lang/Object;
.source "HiltViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHiltViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HiltViewModel.kt\nandroidx/hilt/navigation/compose/HiltViewModelKt\n+ 2 ViewModel.kt\nandroidx/lifecycle/viewmodel/compose/ViewModelKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,104:1\n86#2,6:105\n91#2:111\n76#3:112\n*S KotlinDebug\n*F\n+ 1 HiltViewModel.kt\nandroidx/hilt/navigation/compose/HiltViewModelKt\n*L\n52#1:105,6\n76#1:111\n96#1:112\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0017\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u00a2\u0006\u0002\u0010\u0004\u001a0\u0010\u0005\u001a\u0002H\u0006\"\n\u0008\u0000\u0010\u0006\u0018\u0001*\u00020\u00072\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0087\u0008\u00a2\u0006\u0002\u0010\n\u001aN\u0010\u0005\u001a\u0002H\u0006\"\n\u0008\u0000\u0010\u0006\u0018\u0001*\u00020\u0007\"\u0006\u0008\u0001\u0010\u000b\u0018\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0014\u0008\u0008\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\u00060\rH\u0087\u0008\u00a2\u0006\u0002\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "createHiltViewModelFactory",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "viewModelStoreOwner",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelProvider$Factory;",
        "hiltViewModel",
        "VM",
        "Landroidx/lifecycle/ViewModel;",
        "key",
        "",
        "(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;",
        "VMF",
        "creationCallback",
        "Lkotlin/Function1;",
        "(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;",
        "hilt-navigation-compose_release"
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
.method public static final createHiltViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 5
    .param p0, "viewModelStoreOwner"    # Landroidx/lifecycle/ViewModelStoreOwner;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const v0, 0x698e223e

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "C(createHiltViewModelFactory)95@3915L7:HiltViewModel.kt#9mcars"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 94
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .line 112
    .local v2, "$i$f$getCurrent":I
    const v3, 0x6292b32

    const-string v4, "C:CompositionLocal.kt#9igjgp"

    invoke-static {p1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    check-cast v3, Landroid/content/Context;

    .line 97
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    .line 95
    invoke-static {v3, v0}, Landroidx/hilt/navigation/HiltViewModelFactory;->create(Landroid/content/Context;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final synthetic hiltViewModel(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;
    .locals 11
    .param p0, "viewModelStoreOwner"    # Landroidx/lifecycle/ViewModelStoreOwner;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VM:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "II)TVM;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$hiltViewModel":I
    const v1, 0x70b323c8

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(hiltViewModel)P(1)*45@1969L7,50@2112L47,51@2171L54:HiltViewModel.kt#9mcars"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    .line 46
    sget-object v1, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    sget v2, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->$stable:I

    invoke-virtual {v1, p2, v2}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object p0, v1

    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 47
    .local p4, "$i$a$-checkNotNull-HiltViewModelKt$hiltViewModel$1":I
    nop

    .line 46
    .end local p4    # "$i$a$-checkNotNull-HiltViewModelKt$hiltViewModel$1":I
    new-instance p4, Ljava/lang/IllegalStateException;

    const-string v1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p4

    :cond_1
    :goto_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_2

    .line 49
    const/4 p1, 0x0

    .line 51
    :cond_2
    and-int/lit8 p4, p3, 0xe

    invoke-static {p0, p2, p4}, Landroidx/hilt/navigation/compose/HiltViewModelKt;->createHiltViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p4

    .local p4, "factory":Landroidx/lifecycle/ViewModelProvider$Factory;
    and-int/lit8 v1, p3, 0xe

    and-int/lit8 v2, p3, 0x70

    or-int/2addr v1, v2

    .line 52
    nop

    .local v1, "$changed$iv":I
    const/4 v10, 0x0

    .local v10, "$i$f$viewModel":I
    const v2, 0x671a9c9b

    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(viewModel)P(3,2,1)*80@3834L7,90@4209L68:ViewModel.kt#3tja67"

    invoke-static {p2, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 105
    instance-of v2, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v2, :cond_3

    .line 106
    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v2

    move-object v6, v2

    goto :goto_1

    .line 108
    :cond_3
    sget-object v2, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    check-cast v2, Landroidx/lifecycle/viewmodel/CreationExtras;

    move-object v6, v2

    :goto_1
    nop

    .local v6, "extras$iv":Landroidx/lifecycle/viewmodel/CreationExtras;
    const/4 v2, 0x4

    const-string v3, "VM"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Landroidx/lifecycle/ViewModel;

    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    .line 110
    shl-int/lit8 v3, v1, 0x3

    and-int/lit16 v3, v3, 0x380

    const v4, 0x9048

    or-int v8, v3, v4

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    move-object v7, p2

    invoke-static/range {v2 .. v9}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->viewModel(Ljava/lang/Class;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;

    move-result-object v2

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 52
    .end local v1    # "$changed$iv":I
    .end local v6    # "extras$iv":Landroidx/lifecycle/viewmodel/CreationExtras;
    .end local v10    # "$i$f$viewModel":I
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v2
.end method

.method public static final synthetic hiltViewModel(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;
    .locals 16
    .param p0, "viewModelStoreOwner"    # Landroidx/lifecycle/ViewModelStoreOwner;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "creationCallback"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VM:",
            "Landroidx/lifecycle/ViewModel;",
            "VMF:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-TVMF;+TVM;>;",
            "Landroidx/compose/runtime/Composer;",
            "II)TVM;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    const/4 v10, 0x0

    .local v10, "$i$f$hiltViewModel":I
    const v1, -0x4fb9eeb

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(hiltViewModel)P(2,1)*68@2969L7,74@3156L47,75@3215L430:HiltViewModel.kt#9mcars"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_1

    .line 69
    sget-object v1, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    sget v2, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->$stable:I

    invoke-virtual {v1, v9, v2}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    move-object v11, v1

    .end local p0    # "viewModelStoreOwner":Landroidx/lifecycle/ViewModelStoreOwner;
    .local v1, "viewModelStoreOwner":Landroidx/lifecycle/ViewModelStoreOwner;
    goto :goto_0

    .end local v1    # "viewModelStoreOwner":Landroidx/lifecycle/ViewModelStoreOwner;
    .restart local p0    # "viewModelStoreOwner":Landroidx/lifecycle/ViewModelStoreOwner;
    :cond_0
    const/4 v1, 0x0

    .line 70
    .local v1, "$i$a$-checkNotNull-HiltViewModelKt$hiltViewModel$2":I
    nop

    .line 69
    .end local v1    # "$i$a$-checkNotNull-HiltViewModelKt$hiltViewModel$2":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 0
    :cond_1
    move-object/from16 v11, p0

    .line 69
    .end local p0    # "viewModelStoreOwner":Landroidx/lifecycle/ViewModelStoreOwner;
    .local v11, "viewModelStoreOwner":Landroidx/lifecycle/ViewModelStoreOwner;
    :goto_0
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_2

    .line 72
    const/4 v1, 0x0

    move-object v12, v1

    .end local p1    # "key":Ljava/lang/String;
    .local v1, "key":Ljava/lang/String;
    goto :goto_1

    .line 69
    .end local v1    # "key":Ljava/lang/String;
    .restart local p1    # "key":Ljava/lang/String;
    :cond_2
    move-object/from16 v12, p1

    .line 75
    .end local p1    # "key":Ljava/lang/String;
    .local v12, "key":Ljava/lang/String;
    :goto_1
    and-int/lit8 v1, p4, 0xe

    invoke-static {v11, v9, v1}, Landroidx/hilt/navigation/compose/HiltViewModelKt;->createHiltViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v13

    .line 80
    .local v13, "factory":Landroidx/lifecycle/ViewModelProvider$Factory;
    move-object v1, v11

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    .local v1, "$this$hiltViewModel_u24lambda_u242":Landroidx/lifecycle/ViewModelStoreOwner;
    const/4 v2, 0x0

    .line 81
    .local v2, "$i$a$-run-HiltViewModelKt$hiltViewModel$3":I
    instance-of v3, v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v3, :cond_3

    .line 82
    move-object v3, v1

    check-cast v3, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v3}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v3

    invoke-static {v3, v0}, Ldagger/hilt/android/lifecycle/HiltViewModelExtensions;->withCreationCallback(Landroidx/lifecycle/viewmodel/CreationExtras;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v3

    move-object v5, v3

    goto :goto_2

    .line 84
    :cond_3
    sget-object v3, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    check-cast v3, Landroidx/lifecycle/viewmodel/CreationExtras;

    invoke-static {v3, v0}, Ldagger/hilt/android/lifecycle/HiltViewModelExtensions;->withCreationCallback(Landroidx/lifecycle/viewmodel/CreationExtras;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v3

    move-object v5, v3

    .line 81
    :goto_2
    nop

    .line 80
    .end local v1    # "$this$hiltViewModel_u24lambda_u242":Landroidx/lifecycle/ViewModelStoreOwner;
    .end local v2    # "$i$a$-run-HiltViewModelKt$hiltViewModel$3":I
    move-object v1, v5

    check-cast v1, Landroidx/lifecycle/viewmodel/CreationExtras;

    and-int/lit8 v1, p4, 0xe

    and-int/lit8 v2, p4, 0x70

    or-int/2addr v1, v2

    .line 76
    nop

    .local v5, "extras$iv":Landroidx/lifecycle/viewmodel/CreationExtras;
    move v14, v1

    .local v14, "$changed$iv":I
    const/4 v15, 0x0

    .local v15, "$i$f$viewModel":I
    const v1, 0x671a9c9b

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(viewModel)P(3,2,1)*80@3834L7,90@4209L68:ViewModel.kt#3tja67"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v1, 0x4

    const-string v2, "VM"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Landroidx/lifecycle/ViewModel;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    .line 111
    shl-int/lit8 v2, v14, 0x3

    and-int/lit16 v2, v2, 0x380

    const v3, 0x9048

    or-int v7, v2, v3

    const/4 v8, 0x0

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v8}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->viewModel(Ljava/lang/Class;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 76
    .end local v5    # "extras$iv":Landroidx/lifecycle/viewmodel/CreationExtras;
    .end local v14    # "$changed$iv":I
    .end local v15    # "$i$f$viewModel":I
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method
