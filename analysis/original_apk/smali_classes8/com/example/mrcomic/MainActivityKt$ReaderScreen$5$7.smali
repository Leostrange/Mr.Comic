.class final Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$7;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mrcomic/MainActivityKt;->ReaderScreen(JLkotlin/jvm/functions/Function0;Lcom/example/mrcomic/ComicViewModel;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/example/mrcomic/MainActivityKt$ReaderScreen$5$7\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,1223:1\n1116#2,6:1224\n1116#2,6:1230\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/example/mrcomic/MainActivityKt$ReaderScreen$5$7\n*L\n1136#1:1224,6\n1142#1:1230,6\n*E\n"
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
.field final synthetic $activity:Landroidx/activity/ComponentActivity;

.field final synthetic $isFullscreen$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scaleType$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/layout/ContentScale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Dk1hRW9TcbEuDtxFdY5hffS2I5A(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$7;->invoke$lambda$3$lambda$2(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bmSkBoVZBFlDmqX-aGP_uWfJaco(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$7;->invoke$lambda$1$lambda$0(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ikJBiJkawsV9j8KdahPfL5x4N_8(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$7;->invoke$lambda$4(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/layout/ContentScale;",
            ">;",
            "Landroidx/activity/ComponentActivity;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$7;->$scaleType$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$7;->$activity:Landroidx/activity/ComponentActivity;

    iput-object p3, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$7;->$isFullscreen$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1
    .param p0, "$scaleType$delegate"    # Landroidx/compose/runtime/MutableState;

    const-string v0, "$scaleType$delegate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1136
    sget-object v0, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$66(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/layout/ContentScale;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final invoke$lambda$3$lambda$2(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1
    .param p0, "$scaleType$delegate"    # Landroidx/compose/runtime/MutableState;

    const-string v0, "$scaleType$delegate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1142
    sget-object v0, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFillWidth()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$66(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/layout/ContentScale;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final invoke$lambda$4(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1
    .param p0, "$activity"    # Landroidx/activity/ComponentActivity;
    .param p1, "$isFullscreen$delegate"    # Landroidx/compose/runtime/MutableState;

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$isFullscreen$delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1148
    invoke-static {p0, p1}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$toggleFullscreen(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/MutableState;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 1134
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$7;->invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V
    .locals 13
    .param p1, "$this$TopAppBar"    # Landroidx/compose/foundation/layout/RowScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object v0, p0

    move-object v10, p2

    const-string v1, "$this$TopAppBar"

    move-object v11, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "C1135@45358L32,1135@45337L256,1141@45635L38,1141@45614L254,1147@45889L249:MainActivity.kt#kb949x"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1136
    and-int/lit8 v1, p3, 0x51

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1153
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_3

    .line 1136
    :cond_1
    :goto_0
    const v1, -0x1a55e10a

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "CC(remember):MainActivity.kt#9igjgp"

    invoke-static {p2, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "invalid$iv":Z
    iget-object v2, v0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$7;->$scaleType$delegate:Landroidx/compose/runtime/MutableState;

    move-object v3, p2

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 1224
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1225
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_2

    .line 1226
    const/4 v7, 0x0

    .line 1136
    .local v7, "$i$a$-cache-MainActivityKt$ReaderScreen$5$7$1":I
    new-instance v8, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$7$$ExternalSyntheticLambda0;

    invoke-direct {v8, v2}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$7$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 1226
    .end local v7    # "$i$a$-cache-MainActivityKt$ReaderScreen$5$7$1":I
    move-object v2, v8

    .line 1227
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1228
    nop

    .end local v2    # "value$iv":Ljava/lang/Object;
    goto :goto_1

    .line 1229
    :cond_2
    move-object v2, v5

    .line 1225
    :goto_1
    nop

    .line 1224
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 1136
    .end local v1    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    move-object v1, v2

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;->INSTANCE:Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;

    invoke-virtual {v6}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;->getLambda-18$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    const v8, 0x30006

    const/16 v9, 0x1e

    move-object v7, p2

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    const v1, -0x1a55be64

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {p2, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1142
    iget-object v1, v0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$7;->$scaleType$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v2, 0x0

    .local v2, "invalid$iv":Z
    move-object v3, p2

    .restart local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 1230
    .restart local v4    # "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1231
    .restart local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_3

    .line 1232
    const/4 v7, 0x0

    .line 1142
    .local v7, "$i$a$-cache-MainActivityKt$ReaderScreen$5$7$2":I
    new-instance v8, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$7$$ExternalSyntheticLambda1;

    invoke-direct {v8, v1}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$7$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 1232
    .end local v7    # "$i$a$-cache-MainActivityKt$ReaderScreen$5$7$2":I
    move-object v1, v8

    .line 1233
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1234
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_2

    .line 1235
    :cond_3
    move-object v1, v5

    .line 1231
    :goto_2
    nop

    .line 1230
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 1142
    .end local v2    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;->INSTANCE:Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;

    invoke-virtual {v6}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;->getLambda-19$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    const v8, 0x30006

    const/16 v9, 0x1e

    move-object v7, p2

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 1148
    iget-object v1, v0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$7;->$activity:Landroidx/activity/ComponentActivity;

    iget-object v2, v0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$7;->$isFullscreen$delegate:Landroidx/compose/runtime/MutableState;

    new-instance v3, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$7$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v2}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$7$$ExternalSyntheticLambda2;-><init>(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/MutableState;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    sget-object v1, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;->INSTANCE:Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;

    invoke-virtual {v1}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;->getLambda-20$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    const/high16 v8, 0x30000

    move-object v1, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p2

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 1154
    :goto_3
    return-void
.end method
