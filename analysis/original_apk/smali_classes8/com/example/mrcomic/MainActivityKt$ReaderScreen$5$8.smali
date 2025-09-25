.class final Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$8;
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
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/example/mrcomic/MainActivityKt$ReaderScreen$5$8\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,1223:1\n154#2:1224\n91#3,2:1225\n93#3:1255\n97#3:1260\n79#4,11:1227\n92#4:1259\n456#5,8:1238\n464#5,3:1252\n467#5,3:1256\n3737#6,6:1246\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/example/mrcomic/MainActivityKt$ReaderScreen$5$8\n*L\n1169#1:1224\n1166#1:1225,2\n1166#1:1255\n1166#1:1260\n1166#1:1227,11\n1166#1:1259\n1166#1:1238,8\n1166#1:1252,3\n1166#1:1256,3\n1166#1:1246,6\n*E\n"
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
.field final synthetic $comicData:Lcom/example/mrcomic/Comic;

.field final synthetic $currentPage$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pages$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $viewModel:Lcom/example/mrcomic/ComicViewModel;


# direct methods
.method public static synthetic $r8$lambda$D4HfE5bU2E9uJxAL4QzV02T7u6o(Lcom/example/mrcomic/ComicViewModel;Lcom/example/mrcomic/Comic;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$8;->invoke$lambda$2$lambda$1(Lcom/example/mrcomic/ComicViewModel;Lcom/example/mrcomic/Comic;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$f5ID3JOuwZMpK76BgywlZL1SIL4(Lcom/example/mrcomic/ComicViewModel;Lcom/example/mrcomic/Comic;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$8;->invoke$lambda$2$lambda$0(Lcom/example/mrcomic/ComicViewModel;Lcom/example/mrcomic/Comic;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/example/mrcomic/ComicViewModel;Lcom/example/mrcomic/Comic;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/mrcomic/ComicViewModel;",
            "Lcom/example/mrcomic/Comic;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$8;->$viewModel:Lcom/example/mrcomic/ComicViewModel;

    iput-object p2, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$8;->$comicData:Lcom/example/mrcomic/Comic;

    iput-object p3, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$8;->$currentPage$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$8;->$pages$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$2$lambda$0(Lcom/example/mrcomic/ComicViewModel;Lcom/example/mrcomic/Comic;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 2
    .param p0, "$viewModel"    # Lcom/example/mrcomic/ComicViewModel;
    .param p1, "$comicData"    # Lcom/example/mrcomic/Comic;
    .param p2, "$currentPage$delegate"    # Landroidx/compose/runtime/MutableState;

    const-string v0, "$currentPage$delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1175
    invoke-static {p2}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$50(Landroidx/compose/runtime/MutableState;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1176
    invoke-static {p2}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$50(Landroidx/compose/runtime/MutableState;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$51(Landroidx/compose/runtime/MutableState;I)V

    .line 1177
    invoke-static {p2}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$50(Landroidx/compose/runtime/MutableState;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/example/mrcomic/ComicViewModel;->updateComicProgress(Lcom/example/mrcomic/Comic;I)V

    .line 1179
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final invoke$lambda$2$lambda$1(Lcom/example/mrcomic/ComicViewModel;Lcom/example/mrcomic/Comic;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 2
    .param p0, "$viewModel"    # Lcom/example/mrcomic/ComicViewModel;
    .param p1, "$comicData"    # Lcom/example/mrcomic/Comic;
    .param p2, "$currentPage$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p3, "$pages$delegate"    # Landroidx/compose/runtime/MutableState;

    const-string v0, "$currentPage$delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$pages$delegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1195
    invoke-static {p2}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$50(Landroidx/compose/runtime/MutableState;)I

    move-result v0

    invoke-static {p3}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$53(Landroidx/compose/runtime/MutableState;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1196
    invoke-static {p2}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$50(Landroidx/compose/runtime/MutableState;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$51(Landroidx/compose/runtime/MutableState;I)V

    .line 1197
    invoke-static {p2}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$50(Landroidx/compose/runtime/MutableState;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/example/mrcomic/ComicViewModel;->updateComicProgress(Lcom/example/mrcomic/Comic;I)V

    .line 1199
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 1165
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$8;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 53
    .param p1, "$this$Card"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "$this$Card"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C1165@46524L1752:MainActivity.kt#kb949x"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1166
    and-int/lit8 v2, p3, 0x51

    const/16 v4, 0x10

    if-ne v2, v4, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1207
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_6

    .line 1167
    :cond_1
    :goto_0
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .line 1168
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v2, v4, v6, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 1169
    const/16 v4, 0x10

    .local v4, "$this$dp$iv":I
    const/4 v5, 0x0

    .line 1224
    .local v5, "$i$f$getDp":I
    int-to-float v7, v4

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 1169
    .end local v4    # "$this$dp$iv":I
    .end local v5    # "$i$f$getDp":I
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 1170
    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceBetween()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 1171
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v5

    .line 1166
    iget-object v7, v0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$8;->$viewModel:Lcom/example/mrcomic/ComicViewModel;

    iget-object v8, v0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$8;->$comicData:Lcom/example/mrcomic/Comic;

    iget-object v9, v0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$8;->$currentPage$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v10, v0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$8;->$pages$delegate:Landroidx/compose/runtime/MutableState;

    const/16 v11, 0x1b6

    .local v2, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v4, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v5, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v11, "$changed$iv":I
    const/4 v12, 0x0

    .local v12, "$i$f$Row":I
    const v13, 0x2952b718

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo"

    invoke-static {v1, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1225
    shr-int/lit8 v13, v11, 0x3

    and-int/lit8 v13, v13, 0xe

    shr-int/lit8 v14, v11, 0x3

    and-int/lit8 v14, v14, 0x70

    or-int/2addr v13, v14

    invoke-static {v4, v5, v1, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    .local v13, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v14, v11, 0x3

    and-int/lit8 v14, v14, 0x70

    .line 1226
    nop

    .local v14, "$changed$iv$iv":I
    const/4 v15, 0x0

    .local v15, "$i$f$Layout":I
    const v6, -0x4ee9b9da

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v1, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1227
    const/4 v6, 0x0

    invoke-static {v1, v6}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v16

    .line 1228
    .local v16, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v6

    .line 1230
    .local v6, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v17

    .line 1237
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v18

    shl-int/lit8 v0, v14, 0x9

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit8 v0, v0, 0x6

    .line 1229
    move-object/from16 v19, v18

    .local v19, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v18, v17

    .local v0, "$changed$iv$iv$iv":I
    .local v18, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v17, 0x0

    .line 1238
    .local v17, "$i$f$ReusableComposeNode":I
    move-object/from16 v20, v2

    .end local v2    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v20, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1239
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1240
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1241
    move-object/from16 v2, v18

    .end local v18    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v2, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 1243
    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v18    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_3
    move-object/from16 v2, v18

    .end local v18    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1245
    :goto_1
    move-object/from16 v18, v2

    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v18    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 1232
    .local v21, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v22, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v13, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1233
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1235
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .local v3, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v22, 0x0

    .line 1246
    .local v22, "$i$f$set-impl":I
    move-object/from16 v23, v2

    .local v23, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 1247
    .local v24, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v25

    if-nez v25, :cond_5

    move-object/from16 v25, v4

    .end local v4    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v25, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v26, v5

    .end local v5    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v26, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v5, v23

    goto :goto_3

    .end local v25    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v26    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .restart local v4    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v5    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    :cond_5
    move-object/from16 v25, v4

    move-object/from16 v26, v5

    .line 1248
    .end local v4    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v5    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .restart local v25    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v26    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    :goto_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, v23

    .end local v23    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1249
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1251
    :goto_3
    nop

    .line 1246
    .end local v5    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 1251
    nop

    .line 1236
    .end local v3    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v22    # "$i$f$set-impl":I
    nop

    .line 1245
    .end local v2    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 1252
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    shr-int/lit8 v3, v0, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v19

    .end local v19    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v4, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v4, v2, v1, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    const v2, 0x7ab4aae9

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1254
    shr-int/lit8 v2, v0, 0x9

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed$iv":I
    move-object/from16 v3, p2

    .local v3, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 1255
    .local v5, "$i$a$-Layout-RowKt$Row$1$iv":I
    move/from16 v19, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local v19, "$changed$iv$iv$iv":I
    const v0, -0x1378c42b

    const-string v1, "C92@4661L9:Row.kt#2w3rfo"

    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v1, v11, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .local v0, "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v21, v3

    .local v21, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 1173
    .local v22, "$i$a$-Row-MainActivityKt$ReaderScreen$5$8$1":I
    move-object/from16 v23, v0

    .end local v0    # "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/RowScope;
    .local v23, "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/RowScope;
    const v0, 0x7d7c7477

    move/from16 v24, v1

    .end local v1    # "$changed":I
    .local v24, "$changed":I
    const-string v1, "C1172@46827L586,1189@47570L10,1187@47455L157,1192@47654L604:MainActivity.kt#kb949x"

    move/from16 v52, v2

    move-object/from16 v2, v21

    .end local v21    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v52, "$changed$iv":I
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    new-instance v0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$8$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7, v8, v9}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$8$$ExternalSyntheticLambda0;-><init>(Lcom/example/mrcomic/ComicViewModel;Lcom/example/mrcomic/Comic;Landroidx/compose/runtime/MutableState;)V

    const/16 v28, 0x0

    .line 1180
    invoke-static {v9}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$50(Landroidx/compose/runtime/MutableState;)I

    move-result v1

    move-object/from16 v21, v4

    const/4 v4, 0x1

    .end local v4    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v21, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    if-le v1, v4, :cond_6

    move/from16 v29, v4

    goto :goto_4

    :cond_6
    const/16 v29, 0x0

    :goto_4
    const/16 v30, 0x0

    const/16 v31, 0x0

    sget-object v1, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;->INSTANCE:Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;

    invoke-virtual {v1}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;->getLambda-21$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v32

    const/high16 v34, 0x30000

    const/16 v35, 0x1a

    .line 1173
    move-object/from16 v27, v0

    move-object/from16 v33, v2

    invoke-static/range {v27 .. v35}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 1189
    invoke-static {v9}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$50(Landroidx/compose/runtime/MutableState;)I

    move-result v0

    invoke-static {v10}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$53(Landroidx/compose/runtime/MutableState;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " / "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    .line 1190
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v1, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v2, v1}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/Typography;->getBodyLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v47

    const/16 v49, 0x0

    const/16 v50, 0x0

    const v51, 0xfffe

    .line 1188
    move-object/from16 v48, v2

    invoke-static/range {v27 .. v51}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 1193
    new-instance v0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$8$$ExternalSyntheticLambda1;

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$8$$ExternalSyntheticLambda1;-><init>(Lcom/example/mrcomic/ComicViewModel;Lcom/example/mrcomic/Comic;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 1200
    invoke-static {v9}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$50(Landroidx/compose/runtime/MutableState;)I

    move-result v1

    invoke-static {v10}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$53(Landroidx/compose/runtime/MutableState;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    const/16 v29, 0x1

    goto :goto_5

    :cond_7
    const/16 v29, 0x0

    :goto_5
    const/16 v30, 0x0

    const/16 v31, 0x0

    sget-object v1, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;->INSTANCE:Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;

    invoke-virtual {v1}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt;->getLambda-22$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v32

    const/high16 v34, 0x30000

    const/16 v35, 0x1a

    .line 1193
    move-object/from16 v27, v0

    move-object/from16 v33, v2

    invoke-static/range {v27 .. v35}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 1173
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1207
    nop

    .line 1255
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-Row-MainActivityKt$ReaderScreen$5$8$1":I
    .end local v23    # "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/RowScope;
    .end local v24    # "$changed":I
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1254
    .end local v3    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .end local v52    # "$changed$iv":I
    nop

    .line 1256
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1257
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1258
    nop

    .end local v17    # "$i$f$ReusableComposeNode":I
    .end local v18    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v19    # "$changed$iv$iv$iv":I
    .end local v21    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1259
    nop

    .end local v6    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v14    # "$changed$iv$iv":I
    .end local v15    # "$i$f$Layout":I
    .end local v16    # "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1260
    nop

    .line 1208
    .end local v11    # "$changed$iv":I
    .end local v12    # "$i$f$Row":I
    .end local v13    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v20    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v25    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v26    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    :goto_6
    return-void
.end method
