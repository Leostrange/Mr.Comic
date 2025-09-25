.class final Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;
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
        "Landroidx/compose/ui/text/AnnotatedString;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSavers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2\n+ 2 Savers.kt\nandroidx/compose/ui/text/SaversKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,454:1\n60#2,2:455\n60#2,2:458\n91#2:461\n60#2,2:464\n1#3:457\n1#3:460\n1#3:462\n1#3:463\n1#3:466\n*S KotlinDebug\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2\n*L\n107#1:455,2\n109#1:458,2\n111#1:461\n114#1:464,2\n107#1:457\n109#1:460\n111#1:462\n114#1:466\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/text/AnnotatedString;",
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
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 13
    .param p1, "it"    # Ljava/lang/Object;

    .line 104
    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 107
    .local v0, "list":Ljava/util/List;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->access$getAnnotationRangeListSaver$p()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v2

    .local v2, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v3, 0x0

    .line 455
    .local v3, "$i$f$restore":I
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    instance-of v6, v2, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v6, :cond_0

    move-object v9, v7

    goto :goto_0

    .line 456
    :cond_0
    if-eqz v1, :cond_1

    move-object v6, v1

    .line 457
    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 456
    .local v8, "$i$a$-let-SaversKt$restore$1$iv":I
    move-object v9, v2

    .line 457
    .local v9, "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v10, 0x0

    .line 456
    .local v10, "$i$a$-with-SaversKt$restore$1$1$iv":I
    invoke-interface {v9, v1}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v10    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v9, Ljava/util/List;

    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-SaversKt$restore$1$iv":I
    goto :goto_0

    :cond_1
    move-object v9, v7

    .line 107
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v2    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v3    # "$i$f$restore":I
    :goto_0
    nop

    .line 106
    move-object v1, v9

    .line 109
    .local v1, "spanStylesOrNull":Ljava/util/List;
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->access$getAnnotationRangeListSaver$p()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v3

    .local v3, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v6, 0x0

    .line 458
    .local v6, "$i$f$restore":I
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    instance-of v8, v3, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v8, :cond_2

    move-object v10, v7

    goto :goto_1

    .line 459
    :cond_2
    if-eqz v2, :cond_3

    move-object v8, v2

    .line 460
    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 459
    .local v9, "$i$a$-let-SaversKt$restore$1$iv":I
    move-object v10, v3

    .line 460
    .local v10, "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v11, 0x0

    .line 459
    .local v11, "$i$a$-with-SaversKt$restore$1$1$iv":I
    invoke-interface {v10, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v11    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v10, Ljava/util/List;

    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-SaversKt$restore$1$iv":I
    goto :goto_1

    :cond_3
    move-object v10, v7

    .line 109
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v6    # "$i$f$restore":I
    :goto_1
    nop

    .line 108
    move-object v2, v10

    .line 110
    .local v2, "paragraphStylesOrNull":Ljava/util/List;
    nop

    .line 111
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .local v3, "value$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 461
    .local v4, "$i$f$restore":I
    if-eqz v3, :cond_4

    move-object v6, v3

    .line 462
    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 461
    .local v8, "$i$a$-let-SaversKt$restore$2$iv":I
    check-cast v6, Ljava/lang/String;

    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-SaversKt$restore$2$iv":I
    goto :goto_2

    :cond_4
    move-object v6, v7

    .end local v3    # "value$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$restore":I
    :goto_2
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 112
    if-eqz v1, :cond_6

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 463
    const/4 v3, 0x0

    .line 112
    .local v3, "$i$a$-ifEmpty-SaversKt$AnnotatedStringSaver$2$1":I
    move-object v3, v7

    .end local v3    # "$i$a$-ifEmpty-SaversKt$AnnotatedStringSaver$2$1":I
    :cond_5
    check-cast v3, Ljava/util/List;

    goto :goto_3

    :cond_6
    move-object v3, v7

    .line 113
    :goto_3
    if-eqz v2, :cond_8

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 463
    const/4 v4, 0x0

    .line 113
    .local v4, "$i$a$-ifEmpty-SaversKt$AnnotatedStringSaver$2$2":I
    move-object v4, v7

    .end local v4    # "$i$a$-ifEmpty-SaversKt$AnnotatedStringSaver$2$2":I
    :cond_7
    check-cast v4, Ljava/util/List;

    goto :goto_4

    :cond_8
    move-object v4, v7

    .line 114
    :goto_4
    const/4 v8, 0x3

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .local v8, "value$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->access$getAnnotationRangeListSaver$p()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v9

    .local v9, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v10, 0x0

    .line 464
    .local v10, "$i$f$restore":I
    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    instance-of v5, v9, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v5, :cond_9

    goto :goto_5

    .line 465
    :cond_9
    if-eqz v8, :cond_a

    move-object v5, v8

    .line 466
    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 465
    .local v7, "$i$a$-let-SaversKt$restore$1$iv":I
    move-object v11, v9

    .line 466
    .local v11, "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v12, 0x0

    .line 465
    .local v12, "$i$a$-with-SaversKt$restore$1$1$iv":I
    invoke-interface {v11, v8}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "$this$restore_u24lambda_u243_u24lambda_u242$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v12    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v11, Ljava/util/List;

    move-object v7, v11

    .line 110
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-SaversKt$restore$1$iv":I
    .end local v8    # "value$iv":Ljava/lang/Object;
    .end local v9    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v10    # "$i$f$restore":I
    :cond_a
    :goto_5
    new-instance v5, Landroidx/compose/ui/text/AnnotatedString;

    invoke-direct {v5, v6, v3, v4, v7}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v5
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 94
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;->invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    return-object v0
.end method
