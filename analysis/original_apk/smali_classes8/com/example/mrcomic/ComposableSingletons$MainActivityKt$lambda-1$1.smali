.class final Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 4 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 5 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,1223:1\n74#2:1224\n49#3:1225\n51#3:1229\n46#4:1226\n51#4:1228\n105#5:1227\n81#6:1230\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1\n*L\n118#1:1224\n120#1:1225\n120#1:1229\n120#1:1226\n120#1:1228\n120#1:1227\n119#1:1230\n*E\n"
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


# static fields
.field public static final INSTANCE:Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1;

    invoke-direct {v0}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1;-><init>()V

    sput-object v0, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1;->INSTANCE:Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$invoke$lambda$1(Landroidx/compose/runtime/State;)Z
    .locals 1
    .param p0, "$isDarkTheme$delegate"    # Landroidx/compose/runtime/State;

    .line 117
    invoke-static {p0}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1;->invoke$lambda$1(Landroidx/compose/runtime/State;)Z

    move-result v0

    return v0
.end method

.method private static final invoke$lambda$1(Landroidx/compose/runtime/State;)Z
    .locals 4
    .param p0, "$isDarkTheme$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 1230
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 119
    return v0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 117
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 13
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C117@5134L7,120@5302L31,122@5359L705:MainActivity.kt#kb949x"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 118
    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 118
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .line 1224
    .local v2, "$i$f$getCurrent":I
    const v3, 0x789c5f52

    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {p1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 118
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    move-object v0, v3

    check-cast v0, Landroid/content/Context;

    .line 119
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/example/mrcomic/MainActivityKt;->getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v1

    invoke-interface {v1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 120
    nop

    .local v1, "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 1225
    .local v2, "$i$f$map":I
    move-object v3, v1

    .local v3, "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 1226
    .local v4, "$i$f$unsafeTransform":I
    const/4 v5, 0x0

    .line 1227
    .local v5, "$i$f$unsafeFlow":I
    new-instance v6, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1$invoke$$inlined$map$1;

    invoke-direct {v6, v3}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1$invoke$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/flow/Flow;

    .line 1228
    .end local v5    # "$i$f$unsafeFlow":I
    nop

    .line 1229
    .end local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$unsafeTransform":I
    nop

    .line 121
    .end local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$map":I
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v11, 0x38

    const/4 v12, 0x2

    move-object v10, p1

    invoke-static/range {v7 .. v12}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v2

    .line 119
    nop

    .line 123
    .local v2, "isDarkTheme$delegate":Landroidx/compose/runtime/State;
    invoke-static {v2}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1;->invoke$lambda$1(Landroidx/compose/runtime/State;)Z

    move-result v3

    new-instance v4, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1$1;

    invoke-direct {v4, v2, v0}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1$1;-><init>(Landroidx/compose/runtime/State;Landroid/content/Context;)V

    const v5, -0x1fc4f64e    # -5.3909996E19f

    const/4 v6, 0x1

    invoke-static {p1, v5, v6, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/16 v5, 0x30

    invoke-static {v3, v4, p1, v5, v1}, Lcom/example/mrcomic/MainActivityKt;->MrComicTheme(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 140
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "isDarkTheme$delegate":Landroidx/compose/runtime/State;
    :goto_1
    return-void
.end method
