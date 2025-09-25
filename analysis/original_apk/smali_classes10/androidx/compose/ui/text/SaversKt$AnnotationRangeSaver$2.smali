.class final Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;
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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/text/AnnotatedString$Range<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSavers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2\n+ 2 Savers.kt\nandroidx/compose/ui/text/SaversKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,454:1\n91#2:455\n91#2:457\n91#2:459\n91#2:461\n60#2,2:463\n60#2,2:466\n60#2,2:469\n60#2,2:472\n91#2:475\n1#3:456\n1#3:458\n1#3:460\n1#3:462\n1#3:465\n1#3:468\n1#3:471\n1#3:474\n1#3:476\n*S KotlinDebug\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2\n*L\n181#1:455\n182#1:457\n183#1:459\n184#1:461\n188#1:463,2\n192#1:466,2\n196#1:469,2\n200#1:472,2\n204#1:475\n181#1:456\n182#1:458\n183#1:460\n184#1:462\n188#1:465\n192#1:468\n196#1:471\n200#1:474\n204#1:476\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0002\u0018\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/text/AnnotatedString$Range;",
        "",
        "it",
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
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/AnnotatedString$Range;
    .locals 12
    .param p1, "it"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 180
    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 181
    .local v0, "list":Ljava/util/List;
    const/4 v1, 0x0

    .line 463
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 181
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 455
    .local v3, "$i$f$restore":I
    const/4 v4, 0x0

    if-eqz v1, :cond_0

    move-object v5, v1

    .line 456
    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 455
    .local v6, "$i$a$-let-SaversKt$restore$2$iv":I
    check-cast v5, Landroidx/compose/ui/text/AnnotationType;

    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-SaversKt$restore$2$iv":I
    goto :goto_0

    :cond_0
    move-object v5, v4

    .line 181
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$restore":I
    :goto_0
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v5

    .line 182
    .local v1, "marker":Landroidx/compose/ui/text/AnnotationType;
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .local v3, "value$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 457
    .local v5, "$i$f$restore":I
    if-eqz v3, :cond_1

    move-object v6, v3

    .line 458
    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 457
    .local v7, "$i$a$-let-SaversKt$restore$2$iv":I
    check-cast v6, Ljava/lang/Integer;

    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-SaversKt$restore$2$iv":I
    goto :goto_1

    :cond_1
    move-object v6, v4

    .line 182
    .end local v3    # "value$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$restore":I
    :goto_1
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 183
    .local v3, "start":I
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .local v5, "value$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 459
    .local v6, "$i$f$restore":I
    if-eqz v5, :cond_2

    move-object v7, v5

    .line 460
    .local v7, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 459
    .local v8, "$i$a$-let-SaversKt$restore$2$iv":I
    check-cast v7, Ljava/lang/Integer;

    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-SaversKt$restore$2$iv":I
    goto :goto_2

    :cond_2
    move-object v7, v4

    .line 183
    .end local v5    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$restore":I
    :goto_2
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 184
    .local v5, "end":I
    const/4 v6, 0x4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .local v6, "value$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 461
    .local v7, "$i$f$restore":I
    if-eqz v6, :cond_3

    move-object v8, v6

    .line 462
    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 461
    .local v9, "$i$a$-let-SaversKt$restore$2$iv":I
    check-cast v8, Ljava/lang/String;

    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-SaversKt$restore$2$iv":I
    goto :goto_3

    :cond_3
    move-object v8, v4

    .line 184
    .end local v6    # "value$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$restore":I
    :goto_3
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v6, v8

    .line 186
    .local v6, "tag":Ljava/lang/String;
    sget-object v7, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotationType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    packed-switch v7, :pswitch_data_0

    .line 205
    new-instance v2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v2

    .line 204
    :pswitch_0
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 475
    .restart local v7    # "$i$f$restore":I
    if-eqz v2, :cond_4

    move-object v4, v2

    .line 476
    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 475
    .local v8, "$i$a$-let-SaversKt$restore$2$iv":I
    check-cast v4, Ljava/lang/String;

    .line 204
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$restore":I
    .end local v8    # "$i$a$-let-SaversKt$restore$2$iv":I
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v4

    .line 205
    .local v2, "item":Ljava/lang/String;
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {v4, v2, v3, v5, v6}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    .end local v2    # "item":Ljava/lang/String;
    goto/16 :goto_8

    .line 200
    :pswitch_1
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .local v7, "value$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->access$getUrlAnnotationSaver$p()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v8

    .local v8, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v9, 0x0

    .line 472
    .local v9, "$i$f$restore":I
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v2, v8, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v2, :cond_5

    goto :goto_4

    .line 473
    :cond_5
    if-eqz v7, :cond_6

    move-object v2, v7

    .line 474
    .local v2, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 473
    .local v4, "$i$a$-let-SaversKt$restore$1$iv":I
    move-object v10, v8

    .line 474
    .local v10, "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v11, 0x0

    .line 473
    .local v11, "$i$a$-with-SaversKt$restore$1$1$iv":I
    invoke-interface {v10, v7}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v11    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v10, Landroidx/compose/ui/text/UrlAnnotation;

    move-object v4, v10

    .line 200
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-SaversKt$restore$1$iv":I
    .end local v7    # "value$iv":Ljava/lang/Object;
    .end local v8    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v9    # "$i$f$restore":I
    :cond_6
    :goto_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v4

    .line 201
    .local v2, "item":Landroidx/compose/ui/text/UrlAnnotation;
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {v4, v2, v3, v5, v6}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    .end local v2    # "item":Landroidx/compose/ui/text/UrlAnnotation;
    goto/16 :goto_8

    .line 196
    :pswitch_2
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "value$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->access$getVerbatimTtsAnnotationSaver$p()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v8

    .restart local v8    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v9, 0x0

    .line 469
    .restart local v9    # "$i$f$restore":I
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    instance-of v2, v8, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v2, :cond_7

    goto :goto_5

    .line 470
    :cond_7
    if-eqz v7, :cond_8

    move-object v2, v7

    .line 471
    .local v2, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 470
    .restart local v4    # "$i$a$-let-SaversKt$restore$1$iv":I
    move-object v10, v8

    .line 471
    .restart local v10    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v11, 0x0

    .line 470
    .restart local v11    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    invoke-interface {v10, v7}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v11    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v10, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    move-object v4, v10

    .line 196
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-SaversKt$restore$1$iv":I
    .end local v7    # "value$iv":Ljava/lang/Object;
    .end local v8    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v9    # "$i$f$restore":I
    :cond_8
    :goto_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v4

    .line 197
    .local v2, "item":Landroidx/compose/ui/text/VerbatimTtsAnnotation;
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {v4, v2, v3, v5, v6}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    .end local v2    # "item":Landroidx/compose/ui/text/VerbatimTtsAnnotation;
    goto :goto_8

    .line 192
    :pswitch_3
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "value$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->getSpanStyleSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v8

    .restart local v8    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v9, 0x0

    .line 466
    .restart local v9    # "$i$f$restore":I
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    instance-of v2, v8, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v2, :cond_9

    goto :goto_6

    .line 467
    :cond_9
    if-eqz v7, :cond_a

    move-object v2, v7

    .line 468
    .local v2, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 467
    .restart local v4    # "$i$a$-let-SaversKt$restore$1$iv":I
    move-object v10, v8

    .line 468
    .restart local v10    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v11, 0x0

    .line 467
    .restart local v11    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    invoke-interface {v10, v7}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v11    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v10, Landroidx/compose/ui/text/SpanStyle;

    move-object v4, v10

    .line 192
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-SaversKt$restore$1$iv":I
    .end local v7    # "value$iv":Ljava/lang/Object;
    .end local v8    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v9    # "$i$f$restore":I
    :cond_a
    :goto_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v4

    .line 193
    .local v2, "item":Landroidx/compose/ui/text/SpanStyle;
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {v4, v2, v3, v5, v6}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    .end local v2    # "item":Landroidx/compose/ui/text/SpanStyle;
    goto :goto_8

    .line 188
    :pswitch_4
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "value$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->getParagraphStyleSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v8

    .restart local v8    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v9, 0x0

    .line 463
    .restart local v9    # "$i$f$restore":I
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    instance-of v2, v8, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v2, :cond_b

    goto :goto_7

    .line 464
    :cond_b
    if-eqz v7, :cond_c

    move-object v2, v7

    .line 465
    .local v2, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 464
    .restart local v4    # "$i$a$-let-SaversKt$restore$1$iv":I
    move-object v10, v8

    .line 465
    .restart local v10    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v11, 0x0

    .line 464
    .restart local v11    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    invoke-interface {v10, v7}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v11    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v10, Landroidx/compose/ui/text/ParagraphStyle;

    move-object v4, v10

    .line 188
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-SaversKt$restore$1$iv":I
    .end local v7    # "value$iv":Ljava/lang/Object;
    .end local v8    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v9    # "$i$f$restore":I
    :cond_c
    :goto_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v4

    .line 189
    .local v2, "item":Landroidx/compose/ui/text/ParagraphStyle;
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {v4, v2, v3, v5, v6}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    .line 186
    .end local v2    # "item":Landroidx/compose/ui/text/ParagraphStyle;
    :goto_8
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 144
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;->invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/AnnotatedString$Range;

    move-result-object v0

    return-object v0
.end method
