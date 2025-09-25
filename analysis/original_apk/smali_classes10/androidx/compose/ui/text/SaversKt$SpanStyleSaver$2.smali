.class final Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Savers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/SaversKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/text/SpanStyle;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSavers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$SpanStyleSaver$2\n+ 2 Savers.kt\nandroidx/compose/ui/text/SaversKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,454:1\n60#2,2:455\n60#2,2:458\n60#2,2:461\n91#2:464\n91#2:466\n91#2:468\n60#2,2:470\n60#2,2:473\n60#2,2:476\n60#2,2:479\n60#2,2:482\n60#2,2:485\n60#2,2:488\n1#3:457\n1#3:460\n1#3:463\n1#3:465\n1#3:467\n1#3:469\n1#3:472\n1#3:475\n1#3:478\n1#3:481\n1#3:484\n1#3:487\n1#3:490\n*S KotlinDebug\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$SpanStyleSaver$2\n*L\n264#1:455,2\n265#1:458,2\n266#1:461,2\n267#1:464\n268#1:466\n270#1:468\n271#1:470,2\n272#1:473,2\n273#1:476,2\n274#1:479,2\n275#1:482,2\n276#1:485,2\n277#1:488,2\n264#1:457\n265#1:460\n266#1:463\n267#1:465\n268#1:467\n270#1:469\n271#1:472\n272#1:475\n273#1:478\n274#1:481\n275#1:484\n276#1:487\n277#1:490\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/text/SpanStyle;",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/SpanStyle;
    .locals 30
    .param p1, "it"    # Ljava/lang/Object;

    .line 262
    move-object/from16 v0, p1

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 263
    .local v1, "list":Ljava/util/List;
    new-instance v25, Landroidx/compose/ui/text/SpanStyle;

    .line 264
    const/4 v2, 0x0

    .line 455
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 264
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-static {v4}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/graphics/Color$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v4

    .local v4, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v5, 0x0

    .line 455
    .local v5, "$i$f$restore":I
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    instance-of v6, v4, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v6, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    .line 456
    :cond_0
    if-eqz v2, :cond_1

    move-object v6, v2

    .line 457
    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 456
    .local v8, "$i$a$-let-SaversKt$restore$1$iv":I
    move-object v9, v4

    .line 457
    .local v9, "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v10, 0x0

    .line 456
    .local v10, "$i$a$-with-SaversKt$restore$1$1$iv":I
    invoke-interface {v9, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v10    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v9, Landroidx/compose/ui/graphics/Color;

    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-SaversKt$restore$1$iv":I
    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v4    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v5    # "$i$f$restore":I
    :goto_0
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v4

    .line 265
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    sget-object v6, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-static {v6}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/unit/TextUnit$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v6

    .local v6, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v8, 0x0

    .line 458
    .local v8, "$i$f$restore":I
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    instance-of v9, v6, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v9, :cond_2

    const/4 v11, 0x0

    goto :goto_1

    .line 459
    :cond_2
    if-eqz v2, :cond_3

    move-object v9, v2

    .line 460
    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 459
    .local v10, "$i$a$-let-SaversKt$restore$1$iv":I
    move-object v11, v6

    .line 460
    .local v11, "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v12, 0x0

    .line 459
    .local v12, "$i$a$-with-SaversKt$restore$1$1$iv":I
    invoke-interface {v11, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v12    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v11, Landroidx/compose/ui/unit/TextUnit;

    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-SaversKt$restore$1$iv":I
    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v8    # "$i$f$restore":I
    :goto_1
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Landroidx/compose/ui/unit/TextUnit;->unbox-impl()J

    move-result-wide v8

    .line 266
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    sget-object v6, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-static {v6}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/text/font/FontWeight$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v6

    .restart local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v10, 0x0

    .line 461
    .local v10, "$i$f$restore":I
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    instance-of v11, v6, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v11, :cond_4

    const/4 v13, 0x0

    goto :goto_2

    .line 462
    :cond_4
    if-eqz v2, :cond_5

    move-object v11, v2

    .line 463
    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 462
    .local v12, "$i$a$-let-SaversKt$restore$1$iv":I
    move-object v13, v6

    .line 463
    .local v13, "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v14, 0x0

    .line 462
    .local v14, "$i$a$-with-SaversKt$restore$1$1$iv":I
    invoke-interface {v13, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v14    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v13, Landroidx/compose/ui/text/font/FontWeight;

    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-SaversKt$restore$1$iv":I
    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    .line 267
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v10    # "$i$f$restore":I
    :goto_2
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 464
    .local v6, "$i$f$restore":I
    if-eqz v2, :cond_6

    move-object v10, v2

    .line 465
    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 464
    .local v11, "$i$a$-let-SaversKt$restore$2$iv":I
    check-cast v10, Landroidx/compose/ui/text/font/FontStyle;

    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-SaversKt$restore$2$iv":I
    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    .line 268
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$restore":I
    :goto_3
    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 466
    .restart local v6    # "$i$f$restore":I
    if-eqz v2, :cond_7

    move-object v11, v2

    .line 467
    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 466
    .local v12, "$i$a$-let-SaversKt$restore$2$iv":I
    check-cast v11, Landroidx/compose/ui/text/font/FontSynthesis;

    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-SaversKt$restore$2$iv":I
    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    .line 263
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$restore":I
    :goto_4
    nop

    .line 270
    const/4 v2, 0x6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 468
    .restart local v6    # "$i$f$restore":I
    if-eqz v2, :cond_8

    move-object v14, v2

    .line 469
    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 468
    .local v15, "$i$a$-let-SaversKt$restore$2$iv":I
    check-cast v14, Ljava/lang/String;

    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-SaversKt$restore$2$iv":I
    goto :goto_5

    :cond_8
    const/4 v14, 0x0

    .line 271
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$restore":I
    :goto_5
    const/4 v2, 0x7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    sget-object v6, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-static {v6}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/unit/TextUnit$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v6

    .local v6, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v15, 0x0

    .line 470
    .local v15, "$i$f$restore":I
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    instance-of v7, v6, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v7, :cond_9

    const/4 v12, 0x0

    goto :goto_6

    .line 471
    :cond_9
    if-eqz v2, :cond_a

    move-object v7, v2

    .line 472
    .local v7, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 471
    .local v17, "$i$a$-let-SaversKt$restore$1$iv":I
    move-object/from16 v18, v6

    .line 472
    .local v18, "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    const/16 v19, 0x0

    .line 471
    .local v19, "$i$a$-with-SaversKt$restore$1$1$iv":I
    move-object/from16 v12, v18

    .end local v18    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v12, "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    invoke-interface {v12, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v19    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v12, Landroidx/compose/ui/unit/TextUnit;

    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-SaversKt$restore$1$iv":I
    goto :goto_6

    :cond_a
    const/4 v12, 0x0

    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v15    # "$i$f$restore":I
    :goto_6
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12}, Landroidx/compose/ui/unit/TextUnit;->unbox-impl()J

    move-result-wide v17

    .line 272
    const/16 v2, 0x8

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    sget-object v6, Landroidx/compose/ui/text/style/BaselineShift;->Companion:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    invoke-static {v6}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/text/style/BaselineShift$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v6

    .restart local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v7, 0x0

    .line 473
    .local v7, "$i$f$restore":I
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    instance-of v12, v6, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v12, :cond_b

    const/4 v0, 0x0

    goto :goto_7

    .line 474
    :cond_b
    if-eqz v2, :cond_c

    move-object v12, v2

    .line 475
    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 474
    .local v15, "$i$a$-let-SaversKt$restore$1$iv":I
    move-object/from16 v19, v6

    .line 475
    .local v19, "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    const/16 v21, 0x0

    .line 474
    .local v21, "$i$a$-with-SaversKt$restore$1$1$iv":I
    move-object/from16 v0, v19

    .end local v19    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v0, "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    invoke-interface {v0, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v21    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v0, Landroidx/compose/ui/text/style/BaselineShift;

    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-SaversKt$restore$1$iv":I
    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    .line 273
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v7    # "$i$f$restore":I
    :goto_7
    const/16 v2, 0x9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    sget-object v6, Landroidx/compose/ui/text/style/TextGeometricTransform;->Companion:Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;

    invoke-static {v6}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v6

    .restart local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v7, 0x0

    .line 476
    .restart local v7    # "$i$f$restore":I
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    instance-of v12, v6, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v12, :cond_d

    const/4 v15, 0x0

    goto :goto_8

    .line 477
    :cond_d
    if-eqz v2, :cond_e

    move-object v12, v2

    .line 478
    .restart local v12    # "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 477
    .restart local v15    # "$i$a$-let-SaversKt$restore$1$iv":I
    move-object/from16 v19, v6

    .line 478
    .restart local v19    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    const/16 v21, 0x0

    .line 477
    .restart local v21    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    move-object/from16 v22, v6

    .end local v19    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v6, "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v22, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    invoke-interface {v6, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v21    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v6, Landroidx/compose/ui/text/style/TextGeometricTransform;

    move-object v15, v6

    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-SaversKt$restore$1$iv":I
    goto :goto_8

    .end local v22    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v6, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    :cond_e
    move-object/from16 v22, v6

    .end local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .restart local v22    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v15, 0x0

    .line 274
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$restore":I
    .end local v22    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    :goto_8
    const/16 v2, 0xa

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    sget-object v6, Landroidx/compose/ui/text/intl/LocaleList;->Companion:Landroidx/compose/ui/text/intl/LocaleList$Companion;

    invoke-static {v6}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/text/intl/LocaleList$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v6

    .restart local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v7, 0x0

    .line 479
    .restart local v7    # "$i$f$restore":I
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    instance-of v12, v6, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v12, :cond_f

    const/16 v19, 0x0

    goto :goto_9

    .line 480
    :cond_f
    if-eqz v2, :cond_10

    move-object v12, v2

    .line 481
    .restart local v12    # "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 480
    .local v19, "$i$a$-let-SaversKt$restore$1$iv":I
    move-object/from16 v21, v6

    .line 481
    .local v21, "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    const/16 v22, 0x0

    .line 480
    .local v22, "$i$a$-with-SaversKt$restore$1$1$iv":I
    move-object/from16 v23, v6

    .end local v21    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v6, "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v23, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    invoke-interface {v6, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v22    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v6, Landroidx/compose/ui/text/intl/LocaleList;

    move-object/from16 v19, v6

    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-SaversKt$restore$1$iv":I
    goto :goto_9

    .end local v23    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v6, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    :cond_10
    move-object/from16 v23, v6

    .end local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .restart local v23    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/16 v19, 0x0

    .line 275
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$restore":I
    .end local v23    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    :goto_9
    const/16 v2, 0xb

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-static {v6}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/graphics/Color$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v6

    .restart local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v7, 0x0

    .line 482
    .restart local v7    # "$i$f$restore":I
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    instance-of v12, v6, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v12, :cond_11

    const/4 v6, 0x0

    goto :goto_a

    .line 483
    :cond_11
    if-eqz v2, :cond_12

    move-object v12, v2

    .line 484
    .restart local v12    # "it$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 483
    .local v21, "$i$a$-let-SaversKt$restore$1$iv":I
    move-object/from16 v22, v6

    .line 484
    .local v22, "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    const/16 v23, 0x0

    .line 483
    .local v23, "$i$a$-with-SaversKt$restore$1$1$iv":I
    move-object/from16 v24, v6

    .end local v22    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v6, "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v24, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    invoke-interface {v6, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v23    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v6, Landroidx/compose/ui/graphics/Color;

    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-let-SaversKt$restore$1$iv":I
    goto :goto_a

    .end local v24    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v6, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    :cond_12
    move-object/from16 v24, v6

    .end local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .restart local v24    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v6, 0x0

    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$restore":I
    .end local v24    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    :goto_a
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v26

    .line 276
    const/16 v2, 0xc

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    sget-object v6, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-static {v6}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/text/style/TextDecoration$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v6

    .restart local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v7, 0x0

    .line 485
    .restart local v7    # "$i$f$restore":I
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    instance-of v12, v6, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v12, :cond_13

    const/16 v28, 0x0

    goto :goto_b

    .line 486
    :cond_13
    if-eqz v2, :cond_14

    move-object v12, v2

    .line 487
    .restart local v12    # "it$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 486
    .restart local v21    # "$i$a$-let-SaversKt$restore$1$iv":I
    move-object/from16 v22, v6

    .line 487
    .restart local v22    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    const/16 v23, 0x0

    .line 486
    .restart local v23    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    move-object/from16 v24, v6

    .end local v22    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v6, "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .restart local v24    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    invoke-interface {v6, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v23    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v6, Landroidx/compose/ui/text/style/TextDecoration;

    move-object/from16 v28, v6

    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-let-SaversKt$restore$1$iv":I
    goto :goto_b

    .end local v24    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v6, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    :cond_14
    move-object/from16 v24, v6

    .end local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .restart local v24    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/16 v28, 0x0

    .line 277
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$restore":I
    .end local v24    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    :goto_b
    const/16 v2, 0xd

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    sget-object v6, Landroidx/compose/ui/graphics/Shadow;->Companion:Landroidx/compose/ui/graphics/Shadow$Companion;

    invoke-static {v6}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/graphics/Shadow$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v6

    .restart local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v7, 0x0

    .line 488
    .restart local v7    # "$i$f$restore":I
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    instance-of v3, v6, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v3, :cond_15

    move-object/from16 v29, v1

    const/4 v1, 0x0

    goto :goto_c

    .line 489
    :cond_15
    if-eqz v2, :cond_16

    move-object v3, v2

    .line 490
    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 489
    .local v12, "$i$a$-let-SaversKt$restore$1$iv":I
    move-object/from16 v16, v6

    .line 490
    .local v16, "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    const/16 v21, 0x0

    .line 489
    .local v21, "$i$a$-with-SaversKt$restore$1$1$iv":I
    move-object/from16 v29, v1

    move-object/from16 v1, v16

    .end local v16    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v1, "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v29, "list":Ljava/util/List;
    invoke-interface {v1, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v21    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v1, Landroidx/compose/ui/graphics/Shadow;

    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-SaversKt$restore$1$iv":I
    goto :goto_c

    .end local v29    # "list":Ljava/util/List;
    .local v1, "list":Ljava/util/List;
    :cond_16
    move-object/from16 v29, v1

    .end local v1    # "list":Ljava/util/List;
    .restart local v29    # "list":Ljava/util/List;
    const/4 v1, 0x0

    .line 263
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v7    # "$i$f$restore":I
    :goto_c
    const/16 v21, 0x0

    const/16 v22, 0x0

    const v23, 0xc020

    const/16 v24, 0x0

    move-object/from16 v2, v25

    move-wide v3, v4

    move-wide v5, v8

    move-object v7, v13

    move-object v8, v10

    move-object v9, v11

    const/4 v10, 0x0

    move-object v11, v14

    move-wide/from16 v12, v17

    move-object v14, v0

    move-object/from16 v16, v19

    move-wide/from16 v17, v26

    move-object/from16 v19, v28

    move-object/from16 v20, v1

    invoke-direct/range {v2 .. v24}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v25
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 242
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;->invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/SpanStyle;

    move-result-object v0

    return-object v0
.end method
