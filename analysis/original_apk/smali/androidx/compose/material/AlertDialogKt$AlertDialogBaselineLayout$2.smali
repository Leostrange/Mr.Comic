.class final Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2;
.super Ljava/lang/Object;
.source "AlertDialog.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AlertDialogKt;->AlertDialogBaselineLayout(Landroidx/compose/foundation/layout/ColumnScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAlertDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AlertDialog.kt\nandroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,295:1\n116#2,2:296\n33#2,6:298\n118#2:304\n116#2,2:305\n33#2,6:307\n118#2:313\n1#3:314\n*S KotlinDebug\n*F\n+ 1 AlertDialog.kt\nandroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2\n*L\n116#1:296,2\n116#1:298,6\n116#1:304\n119#1:305,2\n119#1:307,6\n119#1:313\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;"
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
.field public static final INSTANCE:Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2;

    invoke-direct {v0}, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2;-><init>()V

    sput-object v0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2;->INSTANCE:Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 22
    .param p1, "$this$Layout"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "constraints"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .line 116
    move-object/from16 v7, p1

    move-object/from16 v0, p2

    .local v0, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 296
    .local v1, "$i$f$fastFirstOrNull":I
    nop

    .line 297
    move-object v2, v0

    .local v2, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 298
    .local v3, "$i$f$fastForEach":I
    nop

    .line 299
    const/4 v4, 0x0

    .local v4, "index$iv$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    const/4 v6, 0x0

    if-ge v4, v5, :cond_1

    .line 300
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 301
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 297
    .local v10, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    .local v11, "it":Landroidx/compose/ui/layout/Measurable;
    const/4 v12, 0x0

    .line 116
    .local v12, "$i$a$-fastFirstOrNull-AlertDialogKt$AlertDialogBaselineLayout$2$titlePlaceable$1":I
    invoke-static {v11}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v13

    const-string/jumbo v14, "title"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .line 297
    .end local v11    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v12    # "$i$a$-fastFirstOrNull-AlertDialogKt$AlertDialogBaselineLayout$2$titlePlaceable$1":I
    if-eqz v11, :cond_0

    goto :goto_1

    .line 301
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_0
    nop

    .line 299
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 303
    .end local v4    # "index$iv$iv":I
    :cond_1
    nop

    .line 304
    .end local v2    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    move-object v9, v6

    .line 116
    .end local v0    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastFirstOrNull":I
    :goto_1
    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    if-eqz v9, :cond_2

    .line 117
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xb

    const/16 v17, 0x0

    move-wide/from16 v10, p3

    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v0

    .line 116
    invoke-interface {v9, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v6

    :goto_2
    move-object v8, v0

    .line 119
    .local v8, "titlePlaceable":Landroidx/compose/ui/layout/Placeable;
    move-object/from16 v0, p2

    .restart local v0    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 305
    .restart local v1    # "$i$f$fastFirstOrNull":I
    nop

    .line 306
    move-object v2, v0

    .restart local v2    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 307
    .restart local v3    # "$i$f$fastForEach":I
    nop

    .line 308
    const/4 v4, 0x0

    .restart local v4    # "index$iv$iv":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_3
    if-ge v4, v5, :cond_4

    .line 309
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 310
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 306
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .local v12, "it":Landroidx/compose/ui/layout/Measurable;
    const/4 v13, 0x0

    .line 119
    .local v13, "$i$a$-fastFirstOrNull-AlertDialogKt$AlertDialogBaselineLayout$2$textPlaceable$1":I
    invoke-static {v12}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v14

    const-string/jumbo v15, "text"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 306
    .end local v12    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v13    # "$i$a$-fastFirstOrNull-AlertDialogKt$AlertDialogBaselineLayout$2$textPlaceable$1":I
    if-eqz v12, :cond_3

    goto :goto_4

    .line 310
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_3
    nop

    .line 308
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 312
    .end local v4    # "index$iv$iv":I
    :cond_4
    nop

    .line 313
    .end local v2    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    move-object v10, v6

    .line 119
    .end local v0    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastFirstOrNull":I
    :goto_4
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    if-eqz v10, :cond_5

    .line 120
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xb

    const/16 v18, 0x0

    move-wide/from16 v11, p3

    invoke-static/range {v11 .. v18}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v0

    .line 119
    invoke-interface {v10, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    goto :goto_5

    :cond_5
    move-object v0, v6

    :goto_5
    move-object v9, v0

    .line 123
    .local v9, "textPlaceable":Landroidx/compose/ui/layout/Placeable;
    const/4 v0, 0x0

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v0

    :goto_6
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    goto :goto_7

    :cond_7
    move v2, v0

    :goto_7
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 125
    .local v10, "layoutWidth":I
    const/high16 v1, -0x80000000

    if-eqz v8, :cond_9

    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {v8, v2}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .local v2, "baseline":I
    const/4 v3, 0x0

    .line 126
    .local v3, "$i$a$-let-AlertDialogKt$AlertDialogBaselineLayout$2$firstTitleBaseline$1":I
    if-ne v2, v1, :cond_8

    move-object v4, v6

    goto :goto_8

    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 125
    .end local v2    # "baseline":I
    .end local v3    # "$i$a$-let-AlertDialogKt$AlertDialogBaselineLayout$2$firstTitleBaseline$1":I
    :goto_8
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_9

    .line 127
    :cond_9
    move v2, v0

    .line 125
    :goto_9
    move v11, v2

    .line 128
    .local v11, "firstTitleBaseline":I
    if-eqz v8, :cond_b

    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getLastBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {v8, v2}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v2

    .restart local v2    # "baseline":I
    const/4 v3, 0x0

    .line 129
    .local v3, "$i$a$-let-AlertDialogKt$AlertDialogBaselineLayout$2$lastTitleBaseline$1":I
    if-ne v2, v1, :cond_a

    move-object v4, v6

    goto :goto_a

    :cond_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 128
    .end local v2    # "baseline":I
    .end local v3    # "$i$a$-let-AlertDialogKt$AlertDialogBaselineLayout$2$lastTitleBaseline$1":I
    :goto_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_b

    .line 130
    :cond_b
    move v2, v0

    .line 128
    :goto_b
    move v12, v2

    .line 132
    .local v12, "lastTitleBaseline":I
    invoke-static {}, Landroidx/compose/material/AlertDialogKt;->access$getTitleBaselineDistanceFromTop$p()J

    move-result-wide v2

    invoke-interface {v7, v2, v3}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx--R2X_6o(J)I

    move-result v13

    .line 135
    .local v13, "titleOffset":I
    sub-int v14, v13, v11

    .line 137
    .local v14, "titlePositionY":I
    if-eqz v9, :cond_d

    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {v9, v2}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v2

    .restart local v2    # "baseline":I
    const/4 v3, 0x0

    .line 138
    .local v3, "$i$a$-let-AlertDialogKt$AlertDialogBaselineLayout$2$firstTextBaseline$1":I
    if-ne v2, v1, :cond_c

    goto :goto_c

    :cond_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 137
    .end local v2    # "baseline":I
    .end local v3    # "$i$a$-let-AlertDialogKt$AlertDialogBaselineLayout$2$firstTextBaseline$1":I
    :goto_c
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_d

    .line 139
    :cond_d
    move v1, v0

    .line 137
    :goto_d
    move v15, v1

    .line 141
    .local v15, "firstTextBaseline":I
    if-nez v8, :cond_e

    .line 142
    invoke-static {}, Landroidx/compose/material/AlertDialogKt;->access$getTextBaselineDistanceFromTop$p()J

    move-result-wide v1

    invoke-interface {v7, v1, v2}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx--R2X_6o(J)I

    move-result v1

    goto :goto_e

    .line 144
    :cond_e
    invoke-static {}, Landroidx/compose/material/AlertDialogKt;->access$getTextBaselineDistanceFromTitle$p()J

    move-result-wide v1

    invoke-interface {v7, v1, v2}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx--R2X_6o(J)I

    move-result v1

    .line 141
    :goto_e
    move/from16 v16, v1

    .line 148
    .local v16, "textOffset":I
    if-eqz v8, :cond_f

    move-object v1, v8

    .line 314
    .local v1, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v2, 0x0

    .line 148
    .local v2, "$i$a$-let-AlertDialogKt$AlertDialogBaselineLayout$2$titleHeightWithSpacing$1":I
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    add-int/2addr v3, v14

    .end local v1    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v2    # "$i$a$-let-AlertDialogKt$AlertDialogBaselineLayout$2$titleHeightWithSpacing$1":I
    goto :goto_f

    :cond_f
    move v3, v0

    :goto_f
    move/from16 v17, v3

    .line 152
    .local v17, "titleHeightWithSpacing":I
    if-nez v8, :cond_10

    .line 154
    sub-int v1, v16, v15

    goto :goto_10

    .line 156
    :cond_10
    if-nez v12, :cond_11

    .line 159
    sub-int v1, v17, v15

    add-int v1, v1, v16

    goto :goto_10

    .line 162
    :cond_11
    add-int v1, v14, v12

    sub-int/2addr v1, v15

    add-int v1, v1, v16

    .line 152
    :goto_10
    move v6, v1

    .line 167
    .local v6, "textPositionY":I
    if-eqz v9, :cond_14

    move-object v1, v9

    .restart local v1    # "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v2, 0x0

    .line 168
    .local v2, "$i$a$-let-AlertDialogKt$AlertDialogBaselineLayout$2$textHeightWithSpacing$1":I
    if-nez v12, :cond_12

    .line 169
    invoke-virtual {v9}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    add-int v0, v0, v16

    sub-int/2addr v0, v15

    goto :goto_11

    .line 171
    :cond_12
    invoke-virtual {v9}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    add-int v3, v3, v16

    sub-int/2addr v3, v15

    .line 172
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    :cond_13
    sub-int/2addr v0, v12

    .line 171
    sub-int/2addr v3, v0

    move v0, v3

    .line 168
    :goto_11
    nop

    .line 167
    .end local v1    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v2    # "$i$a$-let-AlertDialogKt$AlertDialogBaselineLayout$2$textHeightWithSpacing$1":I
    goto :goto_12

    .line 174
    :cond_14
    nop

    .line 167
    :goto_12
    move/from16 v18, v0

    .line 176
    .local v18, "textHeightWithSpacing":I
    add-int v19, v17, v18

    .line 178
    .local v19, "layoutHeight":I
    const/4 v3, 0x0

    new-instance v0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2$1;

    invoke-direct {v0, v8, v14, v9, v6}, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2$1;-><init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;I)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move v1, v10

    move/from16 v2, v19

    move/from16 v21, v6

    .end local v6    # "textPositionY":I
    .local v21, "textPositionY":I
    move-object/from16 v6, v20

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
