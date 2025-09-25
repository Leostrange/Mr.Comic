.class public final Landroidx/compose/runtime/saveable/RememberSaveableKt;
.super Ljava/lang/Object;
.source "RememberSaveable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRememberSaveable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RememberSaveable.kt\nandroidx/compose/runtime/saveable/RememberSaveableKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,271:1\n74#2:272\n25#3:273\n1116#4,6:274\n*S KotlinDebug\n*F\n+ 1 RememberSaveable.kt\nandroidx/compose/runtime/saveable/RememberSaveableKt\n*L\n82#1:272\n84#1:273\n84#1:274,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a>\u0010\u0002\u001a\u001c\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00040\u0003\"\u0004\u0008\u0000\u0010\u00052\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u0002H\u0005\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0003H\u0002\u001aa\u0010\u0008\u001a\u0002H\u0005\"\u0008\u0008\u0000\u0010\u0005*\u00020\u00062\u0016\u0010\t\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\n\"\u0004\u0018\u00010\u00062\u0016\u0008\u0002\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u0002H\u0005\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u000fH\u0007\u00a2\u0006\u0002\u0010\u0010\u001ag\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0000\u0010\u00052\u0016\u0010\t\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\n\"\u0004\u0018\u00010\u00062\u0014\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u0002H\u0005\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0012\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00050\u00040\u000fH\u0007\u00a2\u0006\u0002\u0010\u0012\u001a\u0016\u0010\u0013\u001a\u00020\u0014*\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0006H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "MaxSupportedRadix",
        "",
        "mutableStateSaver",
        "Landroidx/compose/runtime/saveable/Saver;",
        "Landroidx/compose/runtime/MutableState;",
        "T",
        "",
        "inner",
        "rememberSaveable",
        "inputs",
        "",
        "saver",
        "key",
        "",
        "init",
        "Lkotlin/Function0;",
        "([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;",
        "stateSaver",
        "([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;",
        "requireCanBeSaved",
        "",
        "Landroidx/compose/runtime/saveable/SaveableStateRegistry;",
        "value",
        "runtime-saveable_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final MaxSupportedRadix:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 270
    const/16 v0, 0x24

    sput v0, Landroidx/compose/runtime/saveable/RememberSaveableKt;->MaxSupportedRadix:I

    return-void
.end method

.method public static final synthetic access$requireCanBeSaved(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/runtime/saveable/SaveableStateRegistry;
    .param p1, "value"    # Ljava/lang/Object;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->requireCanBeSaved(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/Object;)V

    return-void
.end method

.method private static final mutableStateSaver(Landroidx/compose/runtime/saveable/Saver;)Landroidx/compose/runtime/saveable/Saver;
    .locals 4
    .param p0, "inner"    # Landroidx/compose/runtime/saveable/Saver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/saveable/Saver<",
            "TT;+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/runtime/MutableState<",
            "TT;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 214
    const-string/jumbo v0, "null cannot be cast to non-null type androidx.compose.runtime.saveable.Saver<T of androidx.compose.runtime.saveable.RememberSaveableKt.mutableStateSaver, kotlin.Any>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .local v0, "$this$mutableStateSaver_u24lambda_u242":Landroidx/compose/runtime/saveable/Saver;
    const/4 v1, 0x0

    .line 215
    .local v1, "$i$a$-with-RememberSaveableKt$mutableStateSaver$1":I
    new-instance v2, Landroidx/compose/runtime/saveable/RememberSaveableKt$mutableStateSaver$1$1;

    invoke-direct {v2, v0}, Landroidx/compose/runtime/saveable/RememberSaveableKt$mutableStateSaver$1$1;-><init>(Landroidx/compose/runtime/saveable/Saver;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    new-instance v3, Landroidx/compose/runtime/saveable/RememberSaveableKt$mutableStateSaver$1$2;

    invoke-direct {v3, v0}, Landroidx/compose/runtime/saveable/RememberSaveableKt$mutableStateSaver$1$2;-><init>(Landroidx/compose/runtime/saveable/Saver;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    .line 214
    .end local v0    # "$this$mutableStateSaver_u24lambda_u242":Landroidx/compose/runtime/saveable/Saver;
    .end local v1    # "$i$a$-with-RememberSaveableKt$mutableStateSaver$1":I
    nop

    .line 238
    return-object v0
.end method

.method public static final rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;
    .locals 8
    .param p0, "inputs"    # [Ljava/lang/Object;
    .param p1, "stateSaver"    # Landroidx/compose/runtime/saveable/Saver;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "init"    # Lkotlin/jvm/functions/Function0;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Landroidx/compose/runtime/saveable/Saver<",
            "TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/runtime/MutableState<",
            "TT;>;>;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/MutableState<",
            "TT;>;"
        }
    .end annotation

    const v0, -0xc0b1824

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberSaveable)P(1,3,2)127@5317L106:RememberSaveable.kt#r2ddri"

    invoke-static {p4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    .line 126
    const/4 p2, 0x0

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p6

    if-eqz p6, :cond_1

    .line 128
    const/4 p6, -0x1

    const-string/jumbo v1, "androidx.compose.runtime.saveable.rememberSaveable (RememberSaveable.kt:127)"

    invoke-static {v0, p5, p6, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 129
    :cond_1
    array-length p6, p0

    invoke-static {p0, p6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 130
    invoke-static {p1}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->mutableStateSaver(Landroidx/compose/runtime/saveable/Saver;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v2

    .line 131
    nop

    .line 132
    and-int/lit16 p6, p5, 0x380

    or-int/lit8 p6, p6, 0x8

    and-int/lit16 v0, p5, 0x1c00

    or-int v6, p6, v0

    const/4 v7, 0x0

    .line 128
    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroidx/compose/runtime/MutableState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p6
.end method

.method public static final rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;
    .locals 23
    .param p0, "inputs"    # [Ljava/lang/Object;
    .param p1, "saver"    # Landroidx/compose/runtime/saveable/Saver;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "init"    # Lkotlin/jvm/functions/Function0;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Landroidx/compose/runtime/saveable/Saver<",
            "TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Landroidx/compose/runtime/Composer;",
            "II)TT;"
        }
    .end annotation

    move-object/from16 v0, p4

    const v1, 0x1a56bfab

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(rememberSaveable)P(1,3,2)71@3180L23,81@3526L7,83@3552L313,93@3940L82:RememberSaveable.kt#r2ddri"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_0

    .line 68
    invoke-static {}, Landroidx/compose/runtime/saveable/SaverKt;->autoSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v2

    .end local p1    # "saver":Landroidx/compose/runtime/saveable/Saver;
    .local v2, "saver":Landroidx/compose/runtime/saveable/Saver;
    goto :goto_0

    .line 0
    .end local v2    # "saver":Landroidx/compose/runtime/saveable/Saver;
    .restart local p1    # "saver":Landroidx/compose/runtime/saveable/Saver;
    :cond_0
    move-object/from16 v2, p1

    .line 68
    .end local p1    # "saver":Landroidx/compose/runtime/saveable/Saver;
    .restart local v2    # "saver":Landroidx/compose/runtime/saveable/Saver;
    :goto_0
    and-int/lit8 v3, p6, 0x4

    if-eqz v3, :cond_1

    .line 69
    const/4 v3, 0x0

    move-object v10, v3

    .end local p2    # "key":Ljava/lang/String;
    .local v3, "key":Ljava/lang/String;
    goto :goto_1

    .line 68
    .end local v3    # "key":Ljava/lang/String;
    .restart local p2    # "key":Ljava/lang/String;
    :cond_1
    move-object/from16 v10, p2

    .line 69
    .end local p2    # "key":Ljava/lang/String;
    .local v10, "key":Ljava/lang/String;
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    const/4 v3, -0x1

    const-string/jumbo v4, "androidx.compose.runtime.saveable.rememberSaveable (RememberSaveable.kt:70)"

    move/from16 v11, p5

    invoke-static {v1, v11, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_2

    .line 69
    :cond_2
    move/from16 v11, p5

    .line 71
    :goto_2
    nop

    .line 72
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v12

    .line 74
    .local v12, "compositeKey":I
    move-object v3, v10

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move v3, v1

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-nez v3, :cond_5

    .line 75
    move-object v3, v10

    goto :goto_5

    .line 77
    :cond_5
    sget v3, Landroidx/compose/runtime/saveable/RememberSaveableKt;->MaxSupportedRadix:I

    invoke-static {v3}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v3

    invoke-static {v12, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "toString(this, checkRadix(radix))"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    :goto_5
    move-object v13, v3

    .line 80
    .local v13, "finalKey":Ljava/lang/String;
    const-string/jumbo v3, "null cannot be cast to non-null type androidx.compose.runtime.saveable.Saver<T of androidx.compose.runtime.saveable.RememberSaveableKt.rememberSaveable, kotlin.Any>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->getLocalSaveableStateRegistry()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    .local v3, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v4, 0x6

    .local v4, "$changed$iv":I
    const/4 v5, 0x0

    .line 272
    .local v5, "$i$f$getCurrent":I
    const v6, 0x789c5f52

    const-string v7, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v0, v6, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 82
    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v4    # "$changed$iv":I
    .end local v5    # "$i$f$getCurrent":I
    move-object v14, v6

    check-cast v14, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 84
    .local v14, "registry":Landroidx/compose/runtime/saveable/SaveableStateRegistry;
    move v9, v1

    .local v9, "$changed$iv":I
    const/4 v15, 0x0

    .local v15, "$i$f$remember":I
    const v3, -0x1d58f75c

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 273
    const/16 v16, 0x0

    .local v16, "invalid$iv$iv":Z
    move-object/from16 v8, p4

    .local v8, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 274
    .local v17, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 275
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v6, v3, :cond_8

    .line 276
    const/16 v19, 0x0

    .line 86
    .local v19, "$i$a$-remember-RememberSaveableKt$rememberSaveable$holder$1":I
    if-eqz v14, :cond_6

    invoke-interface {v14, v13}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->consumeRestored(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .local v3, "it":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 87
    .local v4, "$i$a$-let-RememberSaveableKt$rememberSaveable$holder$1$restored$1":I
    invoke-interface {v2, v3}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 86
    .end local v3    # "it":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-RememberSaveableKt$rememberSaveable$holder$1$restored$1":I
    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    move-object/from16 v20, v3

    .line 89
    .local v20, "restored":Ljava/lang/Object;
    if-nez v20, :cond_7

    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    goto :goto_7

    :cond_7
    move-object/from16 v7, v20

    .line 90
    .local v7, "finalValue":Ljava/lang/Object;
    :goto_7
    new-instance v21, Landroidx/compose/runtime/saveable/SaveableHolder;

    move-object/from16 v3, v21

    move-object v4, v2

    move-object v5, v14

    move-object/from16 v22, v6

    .end local v6    # "it$iv$iv":Ljava/lang/Object;
    .local v22, "it$iv$iv":Ljava/lang/Object;
    move-object v6, v13

    move-object v1, v8

    .end local v8    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v1, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v8}, Landroidx/compose/runtime/saveable/SaveableHolder;-><init>(Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 276
    .end local v7    # "finalValue":Ljava/lang/Object;
    .end local v19    # "$i$a$-remember-RememberSaveableKt$rememberSaveable$holder$1":I
    .end local v20    # "restored":Ljava/lang/Object;
    move-object/from16 v6, v21

    .line 277
    .local v6, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 278
    nop

    .end local v6    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_8

    .line 279
    .end local v1    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "it$iv$iv":Ljava/lang/Object;
    .local v6, "it$iv$iv":Ljava/lang/Object;
    .restart local v8    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_8
    move-object/from16 v22, v6

    move-object v1, v8

    .line 275
    .end local v6    # "it$iv$iv":Ljava/lang/Object;
    .end local v8    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v22    # "it$iv$iv":Ljava/lang/Object;
    :goto_8
    nop

    .line 274
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v22    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 273
    .end local v1    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "invalid$iv$iv":Z
    .end local v17    # "$i$f$cache":I
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 84
    .end local v9    # "$changed$iv":I
    .end local v15    # "$i$f$remember":I
    move-object v1, v6

    check-cast v1, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 93
    .local v1, "holder":Landroidx/compose/runtime/saveable/SaveableHolder;
    move-object/from16 v15, p0

    invoke-virtual {v1, v15}, Landroidx/compose/runtime/saveable/SaveableHolder;->getValueIfInputsDidntChange([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    :cond_9
    move-object/from16 v16, v3

    .line 94
    .local v16, "value":Ljava/lang/Object;
    new-instance v17, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1;

    move-object/from16 v3, v17

    move-object v4, v1

    move-object v5, v2

    move-object v6, v14

    move-object v7, v13

    move-object/from16 v8, v16

    move-object/from16 v9, p0

    invoke-direct/range {v3 .. v9}, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1;-><init>(Landroidx/compose/runtime/saveable/SaveableHolder;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object/from16 v3, v17

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_a
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 98
    return-object v16
.end method

.method private static final requireCanBeSaved(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/Object;)V
    .locals 3
    .param p0, "$this$requireCanBeSaved"    # Landroidx/compose/runtime/saveable/SaveableStateRegistry;
    .param p1, "value"    # Ljava/lang/Object;

    .line 241
    if-eqz p1, :cond_2

    invoke-interface {p0, p1}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->canBeSaved(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 243
    instance-of v1, p1, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    if-eqz v1, :cond_1

    .line 244
    move-object v1, p1

    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/snapshots/SnapshotMutableState;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v1

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 245
    move-object v1, p1

    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/snapshots/SnapshotMutableState;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v1

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 246
    move-object v1, p1

    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/snapshots/SnapshotMutableState;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v1

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->referentialEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 248
    const-string v1, "If you use a custom SnapshotMutationPolicy for your MutableState you have to write a custom Saver"

    goto :goto_0

    .line 251
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MutableState containing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/snapshots/SnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it as a stateSaver parameter to rememberSaveable()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 258
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it to rememberSaveable()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_2
    return-void
.end method
