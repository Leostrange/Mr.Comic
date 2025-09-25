.class final Landroidx/compose/material3/ListItemKt$ListItemLayout$1$1;
.super Ljava/lang/Object;
.source "ListItem.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MultiContentMeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ListItemKt;->ListItemLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListItem.kt\nandroidx/compose/material3/ListItemKt$ListItemLayout$1$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,581:1\n51#2:582\n92#2:583\n*S KotlinDebug\n*F\n+ 1 ListItem.kt\nandroidx/compose/material3/ListItemKt$ListItemLayout$1$1\n*L\n185#1:582\n186#1:583\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
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


# instance fields
.field final synthetic $layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;


# direct methods
.method constructor <init>(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ListItemKt$ListItemLayout$1$1;->$layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 32
    .param p1, "$this$Layout"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "constraints"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;>;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .line 180
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    const/4 v1, 0x0

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 179
    move-object/from16 v16, v2

    .local v16, "headlineMeasurable":Ljava/util/List;
    const/4 v5, 0x1

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/util/List;

    .local v17, "overlineMeasurable":Ljava/util/List;
    const/4 v2, 0x2

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/util/List;

    .local v18, "supportingMeasurable":Ljava/util/List;
    const/4 v2, 0x3

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Ljava/util/List;

    .local v19, "leadingMeasurable":Ljava/util/List;
    const/4 v2, 0x4

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 180
    move-object/from16 v20, v2

    .line 181
    .local v20, "trailingMeasurable":Ljava/util/List;
    const/4 v3, 0x0

    .line 183
    .local v3, "currentTotalWidth":I
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0xa

    const/16 v28, 0x0

    move-wide/from16 v21, p3

    invoke-static/range {v21 .. v28}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v6

    .line 185
    invoke-static {}, Landroidx/compose/material3/ListItemKt;->getListItemStartPadding()F

    move-result v2

    .local v2, "arg0$iv":F
    invoke-static {}, Landroidx/compose/material3/ListItemKt;->getListItemEndPadding()F

    move-result v4

    .local v4, "other$iv":F
    const/4 v8, 0x0

    .line 582
    .local v8, "$i$f$plus-5rwHm24":I
    add-float v9, v2, v4

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 185
    .end local v2    # "arg0$iv":F
    .end local v4    # "other$iv":F
    .end local v8    # "$i$f$plus-5rwHm24":I
    invoke-interface {v15, v2}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    neg-int v2, v2

    .line 186
    invoke-static {}, Landroidx/compose/material3/ListItemKt;->getListItemVerticalPadding()F

    move-result v4

    .local v4, "arg0$iv":F
    const/4 v8, 0x2

    .local v8, "other$iv":I
    const/4 v9, 0x0

    .line 583
    .local v9, "$i$f$times-u2uoSUM":I
    int-to-float v10, v8

    mul-float/2addr v10, v4

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 186
    .end local v4    # "arg0$iv":F
    .end local v8    # "other$iv":I
    .end local v9    # "$i$f$times-u2uoSUM":I
    invoke-interface {v15, v4}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v4

    neg-int v4, v4

    .line 184
    invoke-static {v6, v7, v2, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v6

    .line 183
    move-wide v11, v6

    .line 189
    .local v11, "looseConstraints":J
    invoke-static/range {v19 .. v19}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2, v11, v12}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v6

    .line 190
    .local v2, "leadingPlaceable":Landroidx/compose/ui/layout/Placeable;
    :goto_0
    invoke-static {v2}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    add-int/2addr v4, v3

    .line 192
    .end local v3    # "currentTotalWidth":I
    .local v4, "currentTotalWidth":I
    invoke-static/range {v20 .. v20}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    if-eqz v3, :cond_1

    .line 193
    nop

    .line 194
    neg-int v7, v4

    .line 193
    const/16 v24, 0x0

    const/16 v25, 0x2

    const/16 v26, 0x0

    move-wide/from16 v21, v11

    move/from16 v23, v7

    invoke-static/range {v21 .. v26}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v7

    .line 192
    invoke-interface {v3, v7, v8}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v6

    .line 197
    .local v3, "trailingPlaceable":Landroidx/compose/ui/layout/Placeable;
    :goto_1
    invoke-static {v3}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v7

    add-int v14, v4, v7

    .line 199
    .end local v4    # "currentTotalWidth":I
    .local v14, "currentTotalWidth":I
    const/4 v7, 0x0

    .line 201
    .local v7, "currentTotalHeight":I
    invoke-static/range {v16 .. v16}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    if-eqz v4, :cond_2

    .line 202
    nop

    .line 203
    neg-int v8, v14

    .line 202
    const/16 v24, 0x0

    const/16 v25, 0x2

    const/16 v26, 0x0

    move-wide/from16 v21, v11

    move/from16 v23, v8

    invoke-static/range {v21 .. v26}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v8

    .line 201
    invoke-interface {v4, v8, v9}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v6

    .line 206
    .local v4, "headlinePlaceable":Landroidx/compose/ui/layout/Placeable;
    :goto_2
    invoke-static {v4}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v8

    add-int/2addr v7, v8

    .line 208
    invoke-static/range {v18 .. v18}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    if-eqz v8, :cond_3

    .line 209
    nop

    .line 210
    neg-int v9, v14

    .line 211
    neg-int v10, v7

    .line 209
    invoke-static {v11, v12, v9, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v9

    .line 208
    invoke-interface {v8, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v8

    goto :goto_3

    :cond_3
    move-object v8, v6

    :goto_3
    move-object v9, v8

    .line 214
    .local v9, "supportingPlaceable":Landroidx/compose/ui/layout/Placeable;
    invoke-static {v9}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v8

    add-int v10, v7, v8

    .line 215
    .end local v7    # "currentTotalHeight":I
    .local v10, "currentTotalHeight":I
    if-eqz v9, :cond_4

    .line 216
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {v9, v7}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v7

    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getLastBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {v9, v8}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v8

    if-eq v7, v8, :cond_4

    move v7, v5

    goto :goto_4

    :cond_4
    move v7, v1

    .line 215
    :goto_4
    move v8, v7

    .line 218
    .local v8, "isSupportingMultiline":Z
    invoke-static/range {v17 .. v17}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    if-eqz v7, :cond_5

    .line 219
    nop

    .line 220
    neg-int v6, v14

    .line 221
    neg-int v1, v10

    .line 219
    invoke-static {v11, v12, v6, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v5

    .line 218
    invoke-interface {v7, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v6

    :cond_5
    move-object/from16 v23, v6

    .line 225
    .local v23, "overlinePlaceable":Landroidx/compose/ui/layout/Placeable;
    sget-object v1, Landroidx/compose/material3/ListItemType;->Companion:Landroidx/compose/material3/ListItemType$Companion;

    .line 226
    if-eqz v23, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    .line 227
    :goto_5
    if-eqz v9, :cond_7

    const/4 v6, 0x1

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    .line 228
    :goto_6
    nop

    .line 225
    invoke-virtual {v1, v5, v6, v8}, Landroidx/compose/material3/ListItemType$Companion;->getListItemType-Z-LSjz4$material3_release(ZZZ)I

    move-result v7

    .line 230
    .local v7, "listItemType":I
    sget-object v1, Landroidx/compose/material3/ListItemType;->Companion:Landroidx/compose/material3/ListItemType$Companion;

    invoke-virtual {v1}, Landroidx/compose/material3/ListItemType$Companion;->getThreeLine-AlXitO8()I

    move-result v1

    invoke-static {v7, v1}, Landroidx/compose/material3/ListItemType;->equals-impl0(II)Z

    move-result v21

    .line 233
    .local v21, "isThreeLine":Z
    invoke-static {}, Landroidx/compose/material3/ListItemKt;->getListItemStartPadding()F

    move-result v1

    .line 234
    invoke-static {}, Landroidx/compose/material3/ListItemKt;->getListItemEndPadding()F

    move-result v5

    .line 235
    if-eqz v21, :cond_8

    invoke-static {}, Landroidx/compose/material3/ListItemKt;->getListItemThreeLineVerticalPadding()F

    move-result v6

    goto :goto_7

    :cond_8
    invoke-static {}, Landroidx/compose/material3/ListItemKt;->getListItemVerticalPadding()F

    move-result v6

    .line 236
    :goto_7
    if-eqz v21, :cond_9

    invoke-static {}, Landroidx/compose/material3/ListItemKt;->getListItemThreeLineVerticalPadding()F

    move-result v22

    goto :goto_8

    :cond_9
    invoke-static {}, Landroidx/compose/material3/ListItemKt;->getListItemVerticalPadding()F

    move-result v22

    :goto_8
    move/from16 v24, v7

    move/from16 v7, v22

    .line 233
    .end local v7    # "listItemType":I
    .local v24, "listItemType":I
    nop

    .line 235
    nop

    .line 234
    nop

    .line 236
    nop

    .line 232
    invoke-static {v1, v6, v5, v7}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v22

    .line 239
    .local v22, "paddingValues":Landroidx/compose/foundation/layout/PaddingValues;
    nop

    .line 240
    nop

    .line 241
    nop

    .line 242
    nop

    .line 243
    nop

    .line 244
    nop

    .line 246
    iget-object v7, v0, Landroidx/compose/material3/ListItemKt$ListItemLayout$1$1;->$layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 245
    nop

    .line 247
    nop

    .line 239
    move-object/from16 v1, p1

    move-object/from16 v5, v23

    move-object v6, v9

    move/from16 v25, v8

    .end local v8    # "isSupportingMultiline":Z
    .local v25, "isSupportingMultiline":Z
    move-object/from16 v8, v22

    move-object/from16 v26, v9

    move/from16 v27, v10

    .end local v9    # "supportingPlaceable":Landroidx/compose/ui/layout/Placeable;
    .end local v10    # "currentTotalHeight":I
    .local v26, "supportingPlaceable":Landroidx/compose/ui/layout/Placeable;
    .local v27, "currentTotalHeight":I
    move-wide/from16 v9, p3

    invoke-static/range {v1 .. v10}, Landroidx/compose/material3/ListItemKt;->access$calculateWidth-xygx4p4(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/layout/PaddingValues;J)I

    move-result v1

    .line 249
    .local v1, "width":I
    nop

    .line 250
    nop

    .line 251
    nop

    .line 252
    nop

    .line 253
    nop

    .line 254
    nop

    .line 255
    nop

    .line 256
    nop

    .line 257
    nop

    .line 249
    move-object/from16 v5, p1

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    move-object/from16 v9, v23

    move-object/from16 v10, v26

    move-wide/from16 v28, v11

    .end local v11    # "looseConstraints":J
    .local v28, "looseConstraints":J
    move/from16 v11, v24

    move-object/from16 v12, v22

    move/from16 v30, v14

    .end local v14    # "currentTotalWidth":I
    .local v30, "currentTotalWidth":I
    move-wide/from16 v13, p3

    invoke-static/range {v5 .. v14}, Landroidx/compose/material3/ListItemKt;->access$calculateHeight-N4Jib3Y(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/foundation/layout/PaddingValues;J)I

    move-result v31

    .line 260
    .local v31, "height":I
    nop

    .line 261
    nop

    .line 262
    nop

    .line 263
    nop

    .line 264
    nop

    .line 265
    nop

    .line 266
    nop

    .line 267
    nop

    .line 268
    nop

    .line 269
    iget-object v14, v0, Landroidx/compose/material3/ListItemKt$ListItemLayout$1$1;->$layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 270
    nop

    .line 260
    move v6, v1

    move/from16 v7, v31

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object/from16 v11, v23

    move-object/from16 v12, v26

    move/from16 v13, v21

    move-object/from16 v15, v22

    invoke-static/range {v5 .. v15}, Landroidx/compose/material3/ListItemKt;->access$place(Landroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ZLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v5

    return-object v5
.end method
