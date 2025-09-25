.class final Landroidx/compose/material3/TextFieldMeasurePolicy;
.super Ljava/lang/Object;
.source "TextField.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextField.kt\nandroidx/compose/material3/TextFieldMeasurePolicy\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,1164:1\n116#2,2:1165\n33#2,6:1167\n118#2:1173\n116#2,2:1174\n33#2,6:1176\n118#2:1182\n116#2,2:1183\n33#2,6:1185\n118#2:1191\n116#2,2:1192\n33#2,6:1194\n118#2:1200\n116#2,2:1201\n33#2,6:1203\n118#2:1209\n116#2,2:1210\n33#2,6:1212\n118#2:1218\n544#2,2:1219\n33#2,6:1221\n546#2:1227\n116#2,2:1228\n33#2,6:1230\n118#2:1236\n544#2,2:1237\n33#2,6:1239\n546#2:1245\n544#2,2:1246\n33#2,6:1248\n546#2:1254\n116#2,2:1255\n33#2,6:1257\n118#2:1263\n116#2,2:1264\n33#2,6:1266\n118#2:1272\n116#2,2:1273\n33#2,6:1275\n118#2:1281\n116#2,2:1282\n33#2,6:1284\n118#2:1290\n116#2,2:1291\n33#2,6:1293\n118#2:1299\n116#2,2:1300\n33#2,6:1302\n118#2:1308\n116#2,2:1309\n33#2,6:1311\n118#2:1317\n116#2,2:1318\n33#2,6:1320\n118#2:1326\n116#2,2:1327\n33#2,6:1329\n118#2:1335\n116#2,2:1336\n33#2,6:1338\n118#2:1344\n116#2,2:1345\n33#2,6:1347\n118#2:1353\n544#2,2:1354\n33#2,6:1356\n546#2:1362\n116#2,2:1363\n33#2,6:1365\n118#2:1371\n116#2,2:1372\n33#2,6:1374\n118#2:1380\n*S KotlinDebug\n*F\n+ 1 TextField.kt\nandroidx/compose/material3/TextFieldMeasurePolicy\n*L\n653#1:1165,2\n653#1:1167,6\n653#1:1173\n658#1:1174,2\n658#1:1176,6\n658#1:1182\n664#1:1183,2\n664#1:1185,6\n664#1:1191\n670#1:1192,2\n670#1:1194,6\n670#1:1200\n682#1:1201,2\n682#1:1203,6\n682#1:1209\n686#1:1210,2\n686#1:1212,6\n686#1:1218\n699#1:1219,2\n699#1:1221,6\n699#1:1227\n705#1:1228,2\n705#1:1230,6\n705#1:1236\n747#1:1237,2\n747#1:1239,6\n747#1:1245\n838#1:1246,2\n838#1:1248,6\n838#1:1254\n839#1:1255,2\n839#1:1257,6\n839#1:1263\n842#1:1264,2\n842#1:1266,6\n842#1:1272\n845#1:1273,2\n845#1:1275,6\n845#1:1281\n848#1:1282,2\n848#1:1284,6\n848#1:1290\n851#1:1291,2\n851#1:1293,6\n851#1:1299\n854#1:1300,2\n854#1:1302,6\n854#1:1308\n875#1:1309,2\n875#1:1311,6\n875#1:1317\n881#1:1318,2\n881#1:1320,6\n881#1:1326\n887#1:1327,2\n887#1:1329,6\n887#1:1335\n891#1:1336,2\n891#1:1338,6\n891#1:1344\n898#1:1345,2\n898#1:1347,6\n898#1:1353\n907#1:1354,2\n907#1:1356,6\n907#1:1362\n908#1:1363,2\n908#1:1365,6\n908#1:1371\n912#1:1372,2\n912#1:1374,6\n912#1:1380\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J8\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\n2\u0018\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u0010H\u0002J<\u0010\u0011\u001a\u00020\n*\u00020\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0013\u001a\u00020\n2\u0018\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u0010H\u0002J\"\u0010\u0014\u001a\u00020\n*\u00020\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0013\u001a\u00020\nH\u0016J\"\u0010\u0015\u001a\u00020\n*\u00020\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\nH\u0016J,\u0010\u0016\u001a\u00020\u0017*\u00020\u00182\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u000c2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\"\u0010\u001e\u001a\u00020\n*\u00020\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0013\u001a\u00020\nH\u0016J\"\u0010\u001f\u001a\u00020\n*\u00020\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/compose/material3/TextFieldMeasurePolicy;",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "singleLine",
        "",
        "animationProgress",
        "",
        "paddingValues",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "(ZFLandroidx/compose/foundation/layout/PaddingValues;)V",
        "intrinsicWidth",
        "",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "height",
        "intrinsicMeasurer",
        "Lkotlin/Function2;",
        "intrinsicHeight",
        "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
        "width",
        "maxIntrinsicHeight",
        "maxIntrinsicWidth",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;",
        "minIntrinsicHeight",
        "minIntrinsicWidth",
        "material3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final animationProgress:F

.field private final paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

.field private final singleLine:Z


# direct methods
.method public constructor <init>(ZFLandroidx/compose/foundation/layout/PaddingValues;)V
    .locals 0
    .param p1, "singleLine"    # Z
    .param p2, "animationProgress"    # F
    .param p3, "paddingValues"    # Landroidx/compose/foundation/layout/PaddingValues;

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput-boolean p1, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->singleLine:Z

    .line 636
    iput p2, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->animationProgress:F

    .line 637
    iput-object p3, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 634
    return-void
.end method

.method public static final synthetic access$getAnimationProgress$p(Landroidx/compose/material3/TextFieldMeasurePolicy;)F
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material3/TextFieldMeasurePolicy;

    .line 634
    iget v0, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->animationProgress:F

    return v0
.end method

.method public static final synthetic access$getPaddingValues$p(Landroidx/compose/material3/TextFieldMeasurePolicy;)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material3/TextFieldMeasurePolicy;

    .line 634
    iget-object v0, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
.end method

.method public static final synthetic access$getSingleLine$p(Landroidx/compose/material3/TextFieldMeasurePolicy;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material3/TextFieldMeasurePolicy;

    .line 634
    iget-boolean v0, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->singleLine:Z

    return v0
.end method

.method private final intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 29
    .param p1, "$this$intrinsicHeight"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "width"    # I
    .param p4, "intrinsicMeasurer"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 874
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const/4 v2, 0x0

    .local v2, "remainingWidth":I
    move/from16 v2, p3

    .line 875
    move-object/from16 v3, p2

    .local v3, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1309
    .local v4, "$i$f$fastFirstOrNull":I
    nop

    .line 1310
    move-object v5, v3

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1311
    .local v6, "$i$f$fastForEach":I
    nop

    .line 1312
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_1

    .line 1313
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1314
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1310
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v13, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v14, 0x0

    .line 875
    .local v14, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$leadingHeight$1":I
    invoke-static {v13}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    const-string/jumbo v9, "Leading"

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 1310
    .end local v13    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v14    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$leadingHeight$1":I
    if-eqz v9, :cond_0

    goto :goto_1

    .line 1314
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_0
    nop

    .line 1312
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1316
    .end local v7    # "index$iv$iv":I
    :cond_1
    nop

    .line 1317
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    const/4 v11, 0x0

    .line 875
    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastFirstOrNull":I
    :goto_1
    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    const v3, 0x7fffffff

    if-eqz v11, :cond_2

    move-object v5, v11

    .local v5, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v6, 0x0

    .line 876
    .local v6, "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$leadingHeight$2":I
    nop

    .line 877
    invoke-interface {v5, v3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v7

    .line 876
    invoke-static {v2, v7}, Landroidx/compose/material3/TextFieldKt;->access$substractConstraintSafely(II)I

    move-result v2

    .line 879
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v5, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 875
    .end local v5    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v6    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$leadingHeight$2":I
    move/from16 v18, v5

    goto :goto_2

    .line 880
    :cond_2
    const/16 v18, 0x0

    .line 875
    :goto_2
    nop

    .line 881
    .local v18, "leadingHeight":I
    move-object/from16 v5, p2

    .local v5, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1318
    .local v6, "$i$f$fastFirstOrNull":I
    nop

    .line 1319
    move-object v7, v5

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 1320
    .local v8, "$i$f$fastForEach":I
    nop

    .line 1321
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    :goto_3
    if-ge v9, v10, :cond_4

    .line 1322
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1323
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1319
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v14, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v15, 0x0

    .line 881
    .local v15, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$trailingHeight$1":I
    invoke-static {v14}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v3, "Trailing"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 1319
    .end local v14    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v15    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$trailingHeight$1":I
    if-eqz v3, :cond_3

    goto :goto_4

    .line 1323
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_3
    nop

    .line 1321
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    const v3, 0x7fffffff

    goto :goto_3

    .line 1325
    .end local v9    # "index$iv$iv":I
    :cond_4
    nop

    .line 1326
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    const/4 v12, 0x0

    .line 881
    .end local v5    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastFirstOrNull":I
    :goto_4
    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v12, :cond_5

    move-object v3, v12

    .local v3, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 882
    .local v4, "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$trailingHeight$2":I
    nop

    .line 883
    const v5, 0x7fffffff

    invoke-interface {v3, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v6

    .line 882
    invoke-static {v2, v6}, Landroidx/compose/material3/TextFieldKt;->access$substractConstraintSafely(II)I

    move-result v2

    .line 885
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 881
    .end local v3    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$trailingHeight$2":I
    move/from16 v19, v3

    goto :goto_5

    .line 886
    :cond_5
    const/16 v19, 0x0

    .line 881
    :goto_5
    nop

    .line 887
    .local v19, "trailingHeight":I
    move-object/from16 v3, p2

    .local v3, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1327
    .local v4, "$i$f$fastFirstOrNull":I
    nop

    .line 1328
    move-object v5, v3

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1329
    .local v6, "$i$f$fastForEach":I
    nop

    .line 1330
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_6
    if-ge v7, v8, :cond_7

    .line 1331
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1332
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1328
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v12, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v13, 0x0

    .line 887
    .local v13, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$labelHeight$1":I
    invoke-static {v12}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "Label"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 1328
    .end local v12    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v13    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$labelHeight$1":I
    if-eqz v12, :cond_6

    goto :goto_7

    .line 1332
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_6
    nop

    .line 1330
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1334
    .end local v7    # "index$iv$iv":I
    :cond_7
    nop

    .line 1335
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    const/4 v10, 0x0

    .line 887
    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastFirstOrNull":I
    :goto_7
    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v10, :cond_8

    move-object v3, v10

    .local v3, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 888
    .local v4, "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$labelHeight$2":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 887
    .end local v3    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$labelHeight$2":I
    move/from16 v17, v3

    goto :goto_8

    .line 889
    :cond_8
    const/16 v17, 0x0

    .line 887
    :goto_8
    nop

    .line 891
    .local v17, "labelHeight":I
    move-object/from16 v3, p2

    .local v3, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1336
    .local v4, "$i$f$fastFirstOrNull":I
    nop

    .line 1337
    move-object v5, v3

    .restart local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1338
    .restart local v6    # "$i$f$fastForEach":I
    nop

    .line 1339
    const/4 v7, 0x0

    .restart local v7    # "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_9
    if-ge v7, v8, :cond_a

    .line 1340
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1341
    .restart local v9    # "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .restart local v10    # "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1337
    .restart local v11    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .restart local v12    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v13, 0x0

    .line 891
    .local v13, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$prefixHeight$1":I
    invoke-static {v12}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v14

    const-string/jumbo v15, "Prefix"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 1337
    .end local v12    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v13    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$prefixHeight$1":I
    if-eqz v12, :cond_9

    goto :goto_a

    .line 1341
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_9
    nop

    .line 1339
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 1343
    .end local v7    # "index$iv$iv":I
    :cond_a
    nop

    .line 1344
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    const/4 v10, 0x0

    .line 891
    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastFirstOrNull":I
    :goto_a
    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v10, :cond_b

    move-object v3, v10

    .local v3, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 892
    .local v4, "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$prefixHeight$2":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 893
    .local v5, "height":I
    nop

    .line 894
    const v6, 0x7fffffff

    invoke-interface {v3, v6}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v7

    .line 893
    invoke-static {v2, v7}, Landroidx/compose/material3/TextFieldKt;->access$substractConstraintSafely(II)I

    move-result v2

    .line 896
    nop

    .line 891
    .end local v3    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$prefixHeight$2":I
    .end local v5    # "height":I
    move/from16 v20, v5

    goto :goto_b

    .line 897
    :cond_b
    const/16 v20, 0x0

    .line 891
    :goto_b
    nop

    .line 898
    .local v20, "prefixHeight":I
    move-object/from16 v3, p2

    .local v3, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1345
    .local v4, "$i$f$fastFirstOrNull":I
    nop

    .line 1346
    move-object v5, v3

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1347
    .restart local v6    # "$i$f$fastForEach":I
    nop

    .line 1348
    const/4 v7, 0x0

    .restart local v7    # "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_c
    if-ge v7, v8, :cond_d

    .line 1349
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1350
    .restart local v9    # "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .restart local v10    # "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1346
    .restart local v11    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .restart local v12    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v13, 0x0

    .line 898
    .local v13, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$suffixHeight$1":I
    invoke-static {v12}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v14

    const-string/jumbo v15, "Suffix"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 1346
    .end local v12    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v13    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$suffixHeight$1":I
    if-eqz v12, :cond_c

    goto :goto_d

    .line 1350
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_c
    nop

    .line 1348
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 1352
    .end local v7    # "index$iv$iv":I
    :cond_d
    nop

    .line 1353
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    const/4 v10, 0x0

    .line 898
    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastFirstOrNull":I
    :goto_d
    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v10, :cond_e

    move-object v3, v10

    .local v3, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 899
    .local v4, "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$suffixHeight$2":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 900
    .local v5, "height":I
    nop

    .line 901
    const v6, 0x7fffffff

    invoke-interface {v3, v6}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v6

    .line 900
    invoke-static {v2, v6}, Landroidx/compose/material3/TextFieldKt;->access$substractConstraintSafely(II)I

    move-result v2

    .line 903
    nop

    .line 898
    .end local v3    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$suffixHeight$2":I
    .end local v5    # "height":I
    move/from16 v21, v5

    goto :goto_e

    .line 904
    :cond_e
    const/16 v21, 0x0

    .line 898
    :goto_e
    nop

    .line 907
    .local v21, "suffixHeight":I
    move-object/from16 v3, p2

    .local v3, "$this$fastFirst$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1354
    .local v4, "$i$f$fastFirst":I
    nop

    .line 1355
    move-object v5, v3

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1356
    .restart local v6    # "$i$f$fastForEach":I
    nop

    .line 1357
    const/4 v7, 0x0

    .restart local v7    # "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_f
    if-ge v7, v8, :cond_16

    .line 1358
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1359
    .restart local v9    # "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .restart local v10    # "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1355
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .restart local v12    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v13, 0x0

    .line 907
    .local v13, "$i$a$-fastFirst-TextFieldMeasurePolicy$intrinsicHeight$textFieldHeight$1":I
    invoke-static {v12}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v14

    const-string/jumbo v15, "TextField"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 1355
    .end local v12    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v13    # "$i$a$-fastFirst-TextFieldMeasurePolicy$intrinsicHeight$textFieldHeight$1":I
    if-eqz v12, :cond_15

    .line 907
    .end local v3    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastFirst":I
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    .end local v7    # "index$iv$iv":I
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v10, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v16

    .line 906
    nop

    .line 908
    .local v16, "textFieldHeight":I
    move-object/from16 v3, p2

    .local v3, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1363
    .local v4, "$i$f$fastFirstOrNull":I
    nop

    .line 1364
    move-object v5, v3

    .restart local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1365
    .restart local v6    # "$i$f$fastForEach":I
    nop

    .line 1366
    const/4 v7, 0x0

    .restart local v7    # "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_10
    if-ge v7, v8, :cond_10

    .line 1367
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1368
    .restart local v9    # "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .restart local v10    # "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1364
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .restart local v12    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v13, 0x0

    .line 908
    .local v13, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$placeholderHeight$1":I
    invoke-static {v12}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "Hint"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 1364
    .end local v12    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v13    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$placeholderHeight$1":I
    if-eqz v12, :cond_f

    goto :goto_11

    .line 1368
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_f
    nop

    .line 1366
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 1370
    .end local v7    # "index$iv$iv":I
    :cond_10
    nop

    .line 1371
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    const/4 v10, 0x0

    .line 908
    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastFirstOrNull":I
    :goto_11
    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v10, :cond_11

    move-object v3, v10

    .local v3, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 909
    .local v4, "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$placeholderHeight$2":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 908
    .end local v3    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$placeholderHeight$2":I
    move/from16 v22, v3

    goto :goto_12

    .line 910
    :cond_11
    const/16 v22, 0x0

    .line 908
    :goto_12
    nop

    .line 912
    .local v22, "placeholderHeight":I
    move-object/from16 v3, p2

    .local v3, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1372
    .local v4, "$i$f$fastFirstOrNull":I
    nop

    .line 1373
    move-object v5, v3

    .restart local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1374
    .restart local v6    # "$i$f$fastForEach":I
    nop

    .line 1375
    const/4 v7, 0x0

    .restart local v7    # "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_13
    if-ge v7, v8, :cond_13

    .line 1376
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1377
    .restart local v9    # "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .restart local v10    # "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1373
    .restart local v11    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .restart local v12    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v13, 0x0

    .line 912
    .local v13, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$supportingHeight$1":I
    invoke-static {v12}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v14

    const-string/jumbo v15, "Supporting"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 1373
    .end local v12    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v13    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicHeight$supportingHeight$1":I
    if-eqz v12, :cond_12

    move-object v9, v10

    goto :goto_14

    .line 1377
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_12
    nop

    .line 1375
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 1379
    .end local v7    # "index$iv$iv":I
    :cond_13
    nop

    .line 1380
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    const/4 v9, 0x0

    .line 912
    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastFirstOrNull":I
    :goto_14
    check-cast v9, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v9, :cond_14

    move-object v3, v9

    .local v3, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 913
    .local v4, "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$supportingHeight$2":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 912
    .end local v3    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicHeight$supportingHeight$2":I
    move/from16 v23, v4

    goto :goto_15

    .line 914
    :cond_14
    const/16 v23, 0x0

    .line 912
    :goto_15
    nop

    .line 917
    .local v23, "supportingHeight":I
    nop

    .line 918
    nop

    .line 919
    nop

    .line 920
    nop

    .line 921
    nop

    .line 922
    nop

    .line 923
    nop

    .line 924
    nop

    .line 925
    iget v3, v0, Landroidx/compose/material3/TextFieldMeasurePolicy;->animationProgress:F

    .line 926
    invoke-static {}, Landroidx/compose/material3/TextFieldImplKt;->getZeroConstraints()J

    move-result-wide v25

    .line 927
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getDensity()F

    move-result v27

    .line 928
    iget-object v4, v0, Landroidx/compose/material3/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 916
    move/from16 v24, v3

    move-object/from16 v28, v4

    invoke-static/range {v16 .. v28}, Landroidx/compose/material3/TextFieldKt;->access$calculateHeight-mKXJcVc(IIIIIIIIFJFLandroidx/compose/foundation/layout/PaddingValues;)I

    move-result v3

    return v3

    .line 1359
    .end local v16    # "textFieldHeight":I
    .end local v22    # "placeholderHeight":I
    .end local v23    # "supportingHeight":I
    .local v3, "$this$fastFirst$iv":Ljava/util/List;
    .local v4, "$i$f$fastFirst":I
    .restart local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v6    # "$i$f$fastForEach":I
    .restart local v7    # "index$iv$iv":I
    .restart local v9    # "item$iv$iv":Ljava/lang/Object;
    :cond_15
    nop

    .line 1357
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_f

    .line 1361
    .end local v7    # "index$iv$iv":I
    :cond_16
    nop

    .line 1362
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    new-instance v5, Ljava/util/NoSuchElementException;

    const-string v6, "Collection contains no element matching the predicate."

    invoke-direct {v5, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private final intrinsicWidth(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 20
    .param p1, "measurables"    # Ljava/util/List;
    .param p2, "height"    # I
    .param p3, "intrinsicMeasurer"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 838
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    .local v1, "$this$fastFirst$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1246
    .local v2, "$i$f$fastFirst":I
    nop

    .line 1247
    move-object v3, v1

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1248
    .local v4, "$i$f$fastForEach":I
    nop

    .line 1249
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_13

    .line 1250
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 1251
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1247
    .local v9, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v10, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v11, 0x0

    .line 838
    .local v11, "$i$a$-fastFirst-TextFieldMeasurePolicy$intrinsicWidth$textFieldWidth$1":I
    invoke-static {v10}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v12

    const-string/jumbo v13, "TextField"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .line 1247
    .end local v10    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v11    # "$i$a$-fastFirst-TextFieldMeasurePolicy$intrinsicWidth$textFieldWidth$1":I
    if-eqz v10, :cond_12

    .line 838
    .end local v1    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastFirst":I
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    .end local v5    # "index$iv$iv":I
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 837
    nop

    .line 839
    .local v6, "textFieldWidth":I
    move-object/from16 v1, p1

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1255
    .local v2, "$i$f$fastFirstOrNull":I
    nop

    .line 1256
    move-object v3, v1

    .restart local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1257
    .restart local v4    # "$i$f$fastForEach":I
    nop

    .line 1258
    const/4 v5, 0x0

    .restart local v5    # "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    :goto_1
    if-ge v5, v7, :cond_1

    .line 1259
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1260
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1256
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v12, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v13, 0x0

    .line 839
    .local v13, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$labelWidth$1":I
    invoke-static {v12}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "Label"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 1256
    .end local v12    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v13    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$labelWidth$1":I
    if-eqz v12, :cond_0

    goto :goto_2

    .line 1260
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_0
    nop

    .line 1258
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1262
    .end local v5    # "index$iv$iv":I
    :cond_1
    nop

    .line 1263
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    const/4 v10, 0x0

    .line 839
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastFirstOrNull":I
    :goto_2
    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v10, :cond_2

    move-object v2, v10

    .local v2, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v3, 0x0

    .line 840
    .local v3, "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$labelWidth$2":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 839
    .end local v2    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v3    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$labelWidth$2":I
    move v7, v2

    goto :goto_3

    .line 841
    :cond_2
    const/4 v7, 0x0

    .line 839
    :goto_3
    nop

    .line 842
    .local v7, "labelWidth":I
    move-object/from16 v2, p1

    .local v2, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1264
    .local v3, "$i$f$fastFirstOrNull":I
    nop

    .line 1265
    move-object v4, v2

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1266
    .local v5, "$i$f$fastForEach":I
    nop

    .line 1267
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    :goto_4
    if-ge v9, v10, :cond_4

    .line 1268
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1269
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1265
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v14, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v15, 0x0

    .line 842
    .local v15, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$trailingWidth$1":I
    invoke-static {v14}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v8, "Trailing"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1265
    .end local v14    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v15    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$trailingWidth$1":I
    if-eqz v1, :cond_3

    goto :goto_5

    .line 1269
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_3
    nop

    .line 1267
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1271
    .end local v9    # "index$iv$iv":I
    :cond_4
    nop

    .line 1272
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    const/4 v12, 0x0

    .line 842
    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastFirstOrNull":I
    :goto_5
    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v12, :cond_5

    move-object v1, v12

    .local v1, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v2, 0x0

    .line 843
    .local v2, "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$trailingWidth$2":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 842
    .end local v1    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v2    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$trailingWidth$2":I
    move v3, v1

    goto :goto_6

    .line 844
    :cond_5
    const/4 v3, 0x0

    .line 842
    :goto_6
    nop

    .line 845
    .local v3, "trailingWidth":I
    move-object/from16 v1, p1

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1273
    .local v2, "$i$f$fastFirstOrNull":I
    nop

    .line 1274
    move-object v4, v1

    .restart local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1275
    .restart local v5    # "$i$f$fastForEach":I
    nop

    .line 1276
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    :goto_7
    if-ge v8, v9, :cond_7

    .line 1277
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1278
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1274
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v13, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v14, 0x0

    .line 845
    .local v14, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$prefixWidth$1":I
    invoke-static {v13}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v1

    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v16, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const-string/jumbo v1, "Prefix"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1274
    .end local v13    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v14    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$prefixWidth$1":I
    if-eqz v1, :cond_6

    goto :goto_8

    .line 1278
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_6
    nop

    .line 1276
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v16

    goto :goto_7

    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :cond_7
    move-object/from16 v16, v1

    .line 1280
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v8    # "index$iv$iv":I
    .restart local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    nop

    .line 1281
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    const/4 v11, 0x0

    .line 845
    .end local v2    # "$i$f$fastFirstOrNull":I
    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_8
    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v11, :cond_8

    move-object v1, v11

    .local v1, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v2, 0x0

    .line 846
    .local v2, "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$prefixWidth$2":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 845
    .end local v1    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v2    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$prefixWidth$2":I
    move v4, v1

    goto :goto_9

    .line 847
    :cond_8
    const/4 v4, 0x0

    .line 845
    :goto_9
    nop

    .line 848
    .local v4, "prefixWidth":I
    move-object/from16 v1, p1

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1282
    .local v2, "$i$f$fastFirstOrNull":I
    nop

    .line 1283
    move-object v5, v1

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 1284
    .local v8, "$i$f$fastForEach":I
    nop

    .line 1285
    const/4 v9, 0x0

    .restart local v9    # "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    :goto_a
    if-ge v9, v10, :cond_a

    .line 1286
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1287
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1283
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v14, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v15, 0x0

    .line 848
    .local v15, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$suffixWidth$1":I
    move-object/from16 v16, v1

    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static {v14}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v1

    move/from16 v17, v2

    .end local v2    # "$i$f$fastFirstOrNull":I
    .local v17, "$i$f$fastFirstOrNull":I
    const-string/jumbo v2, "Suffix"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1283
    .end local v14    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v15    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$suffixWidth$1":I
    if-eqz v1, :cond_9

    goto :goto_b

    .line 1287
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_9
    nop

    .line 1285
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    goto :goto_a

    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v17    # "$i$f$fastFirstOrNull":I
    .restart local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v2    # "$i$f$fastFirstOrNull":I
    :cond_a
    move-object/from16 v16, v1

    move/from16 v17, v2

    .line 1289
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastFirstOrNull":I
    .end local v9    # "index$iv$iv":I
    .restart local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v17    # "$i$f$fastFirstOrNull":I
    nop

    .line 1290
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    const/4 v12, 0x0

    .line 848
    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v17    # "$i$f$fastFirstOrNull":I
    :goto_b
    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v12, :cond_b

    move-object v1, v12

    .local v1, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v2, 0x0

    .line 849
    .local v2, "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$suffixWidth$2":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 848
    .end local v1    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v2    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$suffixWidth$2":I
    move v5, v1

    goto :goto_c

    .line 850
    :cond_b
    const/4 v5, 0x0

    .line 848
    :goto_c
    nop

    .line 851
    .local v5, "suffixWidth":I
    move-object/from16 v1, p1

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1291
    .local v2, "$i$f$fastFirstOrNull":I
    nop

    .line 1292
    move-object v8, v1

    .local v8, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 1293
    .local v9, "$i$f$fastForEach":I
    nop

    .line 1294
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    :goto_d
    if-ge v10, v11, :cond_d

    .line 1295
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 1296
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 1292
    .local v14, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v15, v13

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v15, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v16, 0x0

    .line 851
    .local v16, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$leadingWidth$1":I
    move-object/from16 v17, v1

    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v17, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static {v15}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v1

    move/from16 v18, v2

    .end local v2    # "$i$f$fastFirstOrNull":I
    .local v18, "$i$f$fastFirstOrNull":I
    const-string/jumbo v2, "Leading"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1292
    .end local v15    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v16    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$leadingWidth$1":I
    if-eqz v1, :cond_c

    goto :goto_e

    .line 1296
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_c
    nop

    .line 1294
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v17

    move/from16 v2, v18

    goto :goto_d

    .end local v17    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastFirstOrNull":I
    .restart local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v2    # "$i$f$fastFirstOrNull":I
    :cond_d
    move-object/from16 v17, v1

    move/from16 v18, v2

    .line 1298
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastFirstOrNull":I
    .end local v10    # "index$iv$iv":I
    .restart local v17    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v18    # "$i$f$fastFirstOrNull":I
    nop

    .line 1299
    .end local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    const/4 v13, 0x0

    .line 851
    .end local v17    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastFirstOrNull":I
    :goto_e
    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v13, :cond_e

    move-object v1, v13

    .local v1, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v2, 0x0

    .line 852
    .local v2, "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$leadingWidth$2":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v1, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 851
    .end local v1    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v2    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$leadingWidth$2":I
    move v2, v1

    goto :goto_f

    .line 853
    :cond_e
    const/4 v2, 0x0

    .line 851
    :goto_f
    nop

    .line 854
    .local v2, "leadingWidth":I
    move-object/from16 v1, p1

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 1300
    .local v8, "$i$f$fastFirstOrNull":I
    nop

    .line 1301
    move-object v9, v1

    .local v9, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 1302
    .local v10, "$i$f$fastForEach":I
    nop

    .line 1303
    const/4 v11, 0x0

    .local v11, "index$iv$iv":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    :goto_10
    if-ge v11, v12, :cond_10

    .line 1304
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 1305
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 1301
    .local v15, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v16, v14

    check-cast v16, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v16, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v17, 0x0

    .line 854
    .local v17, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$placeholderWidth$1":I
    move-object/from16 v18, v1

    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v18, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static/range {v16 .. v16}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v1

    move/from16 v19, v8

    .end local v8    # "$i$f$fastFirstOrNull":I
    .local v19, "$i$f$fastFirstOrNull":I
    const-string v8, "Hint"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1301
    .end local v16    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v17    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$intrinsicWidth$placeholderWidth$1":I
    if-eqz v1, :cond_f

    move-object v8, v14

    goto :goto_11

    .line 1305
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_f
    nop

    .line 1303
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v18

    move/from16 v8, v19

    goto :goto_10

    .end local v18    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastFirstOrNull":I
    .restart local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v8    # "$i$f$fastFirstOrNull":I
    :cond_10
    move-object/from16 v18, v1

    move/from16 v19, v8

    .line 1307
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastFirstOrNull":I
    .end local v11    # "index$iv$iv":I
    .restart local v18    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v19    # "$i$f$fastFirstOrNull":I
    nop

    .line 1308
    .end local v9    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastForEach":I
    const/4 v8, 0x0

    .line 854
    .end local v18    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastFirstOrNull":I
    :goto_11
    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v8, :cond_11

    move-object v1, v8

    .local v1, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v8, 0x0

    .line 855
    .local v8, "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$placeholderWidth$2":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 854
    .end local v1    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v8    # "$i$a$-let-TextFieldMeasurePolicy$intrinsicWidth$placeholderWidth$2":I
    move v8, v1

    goto :goto_12

    .line 856
    :cond_11
    const/4 v8, 0x0

    .line 854
    :goto_12
    nop

    .line 858
    .local v8, "placeholderWidth":I
    nop

    .line 859
    nop

    .line 860
    nop

    .line 861
    nop

    .line 862
    nop

    .line 863
    nop

    .line 864
    nop

    .line 865
    invoke-static {}, Landroidx/compose/material3/TextFieldImplKt;->getZeroConstraints()J

    move-result-wide v9

    .line 857
    invoke-static/range {v2 .. v10}, Landroidx/compose/material3/TextFieldKt;->access$calculateWidth-yeHjK3Y(IIIIIIIJ)I

    move-result v1

    return v1

    .line 1251
    .end local v6    # "textFieldWidth":I
    .end local v8    # "placeholderWidth":I
    .local v1, "$this$fastFirst$iv":Ljava/util/List;
    .local v2, "$i$f$fastFirst":I
    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v4, "$i$f$fastForEach":I
    .local v5, "index$iv$iv":I
    .local v7, "item$iv$iv":Ljava/lang/Object;
    :cond_12
    nop

    .line 1249
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1253
    .end local v5    # "index$iv$iv":I
    :cond_13
    nop

    .line 1254
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    new-instance v3, Ljava/util/NoSuchElementException;

    const-string v4, "Collection contains no element matching the predicate."

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1, "$this$maxIntrinsicHeight"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 800
    sget-object v0, Landroidx/compose/material3/TextFieldMeasurePolicy$maxIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material3/TextFieldMeasurePolicy$maxIntrinsicHeight$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material3/TextFieldMeasurePolicy;->intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result v0

    return v0
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1, "$this$maxIntrinsicWidth"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 818
    sget-object v0, Landroidx/compose/material3/TextFieldMeasurePolicy$maxIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material3/TextFieldMeasurePolicy$maxIntrinsicWidth$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p2, p3, v0}, Landroidx/compose/material3/TextFieldMeasurePolicy;->intrinsicWidth(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result v0

    return v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 52
    .param p1, "$this$measure_u2d3p2s80s"    # Landroidx/compose/ui/layout/MeasureScope;
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

    .line 643
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, Landroidx/compose/material3/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v0

    invoke-interface {v14, v0}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v23

    .line 644
    .local v23, "topPaddingValue":I
    iget-object v0, v15, Landroidx/compose/material3/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v0

    invoke-interface {v14, v0}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v13

    .line 646
    .local v13, "bottomPaddingValue":I
    const/4 v0, 0x0

    .line 647
    .local v0, "occupiedSpaceHorizontally":I
    const/4 v1, 0x0

    .line 649
    .local v1, "occupiedSpaceVertically":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xa

    const/4 v9, 0x0

    move-wide/from16 v2, p3

    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v2

    .line 653
    .local v2, "looseConstraints":J
    move-object/from16 v4, p2

    .local v4, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1165
    .local v5, "$i$f$fastFirstOrNull":I
    nop

    .line 1166
    move-object v6, v4

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1167
    .local v7, "$i$f$fastForEach":I
    nop

    .line 1168
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    :goto_0
    if-ge v8, v9, :cond_1

    .line 1169
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1170
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 1166
    .local v16, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v17, v12

    check-cast v17, Landroidx/compose/ui/layout/Measurable;

    .local v17, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v18, 0x0

    .line 653
    .local v18, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$leadingPlaceable$1":I
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v19, v4

    .end local v4    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v19, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const-string/jumbo v4, "Leading"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 1166
    .end local v17    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v18    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$leadingPlaceable$1":I
    if-eqz v4, :cond_0

    goto :goto_1

    .line 1170
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_0
    nop

    .line 1168
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v19

    goto :goto_0

    .end local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v4    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :cond_1
    move-object/from16 v19, v4

    .line 1172
    .end local v4    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v8    # "index$iv$iv":I
    .restart local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    nop

    .line 1173
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/4 v12, 0x0

    .line 653
    .end local v5    # "$i$f$fastFirstOrNull":I
    .end local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_1
    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    if-eqz v12, :cond_2

    invoke-interface {v12, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    move-object v6, v4

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 652
    :goto_2
    nop

    .line 654
    .local v6, "leadingPlaceable":Landroidx/compose/ui/layout/Placeable;
    invoke-static {v6}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    add-int/2addr v0, v4

    .line 655
    invoke-static {v6}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 659
    nop

    .line 658
    move-object/from16 v4, p2

    .restart local v4    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1174
    .restart local v5    # "$i$f$fastFirstOrNull":I
    nop

    .line 1175
    move-object v7, v4

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 1176
    .local v8, "$i$f$fastForEach":I
    nop

    .line 1177
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    :goto_3
    if-ge v9, v10, :cond_4

    .line 1178
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1179
    .restart local v11    # "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .restart local v12    # "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 1175
    .restart local v16    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v17, v12

    check-cast v17, Landroidx/compose/ui/layout/Measurable;

    .restart local v17    # "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v18, 0x0

    .line 658
    .local v18, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$trailingPlaceable$1":I
    move-object/from16 v19, v4

    .end local v4    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v4

    move/from16 v20, v5

    .end local v5    # "$i$f$fastFirstOrNull":I
    .local v20, "$i$f$fastFirstOrNull":I
    const-string/jumbo v5, "Trailing"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 1175
    .end local v17    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v18    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$trailingPlaceable$1":I
    if-eqz v4, :cond_3

    goto :goto_4

    .line 1179
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_3
    nop

    .line 1177
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v19

    move/from16 v5, v20

    goto :goto_3

    .end local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v20    # "$i$f$fastFirstOrNull":I
    .restart local v4    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v5    # "$i$f$fastFirstOrNull":I
    :cond_4
    move-object/from16 v19, v4

    move/from16 v20, v5

    .line 1181
    .end local v4    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastFirstOrNull":I
    .end local v9    # "index$iv$iv":I
    .restart local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v20    # "$i$f$fastFirstOrNull":I
    nop

    .line 1182
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    const/4 v12, 0x0

    .line 658
    .end local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v20    # "$i$f$fastFirstOrNull":I
    :goto_4
    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .line 659
    if-eqz v12, :cond_5

    .line 658
    nop

    .line 659
    neg-int v4, v0

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    move-wide/from16 v16, v2

    move/from16 v18, v4

    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v4

    invoke-interface {v12, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    move-object v7, v4

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    .line 658
    :goto_5
    nop

    .line 660
    .local v7, "trailingPlaceable":Landroidx/compose/ui/layout/Placeable;
    invoke-static {v7}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    add-int/2addr v0, v4

    .line 661
    invoke-static {v7}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 665
    nop

    .line 664
    move-object/from16 v4, p2

    .restart local v4    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1183
    .restart local v5    # "$i$f$fastFirstOrNull":I
    nop

    .line 1184
    move-object v8, v4

    .local v8, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 1185
    .local v9, "$i$f$fastForEach":I
    nop

    .line 1186
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    :goto_6
    if-ge v10, v11, :cond_7

    .line 1187
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 1188
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v12

    .local v16, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 1184
    .local v17, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v18, v16

    check-cast v18, Landroidx/compose/ui/layout/Measurable;

    .local v18, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v19, 0x0

    .line 664
    .local v19, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$prefixPlaceable$1":I
    move-object/from16 v20, v4

    .end local v4    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v20, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v4

    move/from16 v21, v5

    .end local v5    # "$i$f$fastFirstOrNull":I
    .local v21, "$i$f$fastFirstOrNull":I
    const-string/jumbo v5, "Prefix"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 1184
    .end local v18    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v19    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$prefixPlaceable$1":I
    if-eqz v4, :cond_6

    goto :goto_7

    .line 1188
    .end local v16    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_6
    nop

    .line 1186
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v20

    move/from16 v5, v21

    goto :goto_6

    .end local v20    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v21    # "$i$f$fastFirstOrNull":I
    .restart local v4    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v5    # "$i$f$fastFirstOrNull":I
    :cond_7
    move-object/from16 v20, v4

    move/from16 v21, v5

    .line 1190
    .end local v4    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastFirstOrNull":I
    .end local v10    # "index$iv$iv":I
    .restart local v20    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v21    # "$i$f$fastFirstOrNull":I
    nop

    .line 1191
    .end local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    const/16 v16, 0x0

    .line 664
    .end local v20    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v21    # "$i$f$fastFirstOrNull":I
    :goto_7
    move-object/from16 v4, v16

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 665
    if-eqz v4, :cond_8

    .line 664
    nop

    .line 665
    neg-int v5, v0

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    move-wide/from16 v16, v2

    move/from16 v18, v5

    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v8

    invoke-interface {v4, v8, v9}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    move-object v8, v4

    goto :goto_8

    :cond_8
    const/4 v8, 0x0

    .line 664
    :goto_8
    nop

    .line 666
    .local v8, "prefixPlaceable":Landroidx/compose/ui/layout/Placeable;
    invoke-static {v8}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    add-int/2addr v0, v4

    .line 667
    invoke-static {v8}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 671
    nop

    .line 670
    move-object/from16 v4, p2

    .restart local v4    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1192
    .restart local v5    # "$i$f$fastFirstOrNull":I
    nop

    .line 1193
    move-object v9, v4

    .local v9, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 1194
    .local v10, "$i$f$fastForEach":I
    nop

    .line 1195
    const/4 v11, 0x0

    .local v11, "index$iv$iv":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    :goto_9
    if-ge v11, v12, :cond_a

    .line 1196
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 1197
    .local v16, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    .local v17, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 1193
    .local v18, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v19, v17

    check-cast v19, Landroidx/compose/ui/layout/Measurable;

    .local v19, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v20, 0x0

    .line 670
    .local v20, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$suffixPlaceable$1":I
    move-object/from16 v21, v4

    .end local v4    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v21, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static/range {v19 .. v19}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v4

    move/from16 v24, v5

    .end local v5    # "$i$f$fastFirstOrNull":I
    .local v24, "$i$f$fastFirstOrNull":I
    const-string/jumbo v5, "Suffix"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 1193
    .end local v19    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v20    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$suffixPlaceable$1":I
    if-eqz v4, :cond_9

    goto :goto_a

    .line 1197
    .end local v17    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_9
    nop

    .line 1195
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v21

    move/from16 v5, v24

    goto :goto_9

    .end local v21    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v24    # "$i$f$fastFirstOrNull":I
    .restart local v4    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v5    # "$i$f$fastFirstOrNull":I
    :cond_a
    move-object/from16 v21, v4

    move/from16 v24, v5

    .line 1199
    .end local v4    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastFirstOrNull":I
    .end local v11    # "index$iv$iv":I
    .restart local v21    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v24    # "$i$f$fastFirstOrNull":I
    nop

    .line 1200
    .end local v9    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastForEach":I
    const/16 v17, 0x0

    .line 670
    .end local v21    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v24    # "$i$f$fastFirstOrNull":I
    :goto_a
    move-object/from16 v4, v17

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 671
    if-eqz v4, :cond_b

    .line 670
    nop

    .line 671
    neg-int v5, v0

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    move-wide/from16 v16, v2

    move/from16 v18, v5

    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {v4, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    move-object v9, v4

    goto :goto_b

    :cond_b
    const/4 v9, 0x0

    .line 670
    :goto_b
    nop

    .line 672
    .local v9, "suffixPlaceable":Landroidx/compose/ui/layout/Placeable;
    invoke-static {v9}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    add-int v12, v0, v4

    .line 673
    .end local v0    # "occupiedSpaceHorizontally":I
    .local v12, "occupiedSpaceHorizontally":I
    invoke-static {v9}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 678
    .end local v1    # "occupiedSpaceVertically":I
    .local v0, "occupiedSpaceVertically":I
    neg-int v1, v13

    .line 679
    neg-int v4, v12

    .line 676
    nop

    .line 679
    nop

    .line 678
    nop

    .line 677
    invoke-static {v2, v3, v4, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v4

    .line 676
    move-wide v10, v4

    .line 682
    .local v10, "labelConstraints":J
    move-object/from16 v1, p2

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1201
    .local v4, "$i$f$fastFirstOrNull":I
    nop

    .line 1202
    move-object v5, v1

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 1203
    .local v16, "$i$f$fastForEach":I
    nop

    .line 1204
    const/16 v17, 0x0

    move-object/from16 v18, v1

    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v17, "index$iv$iv":I
    .local v18, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v19, v4

    move/from16 v4, v17

    .end local v17    # "index$iv$iv":I
    .local v4, "index$iv$iv":I
    .local v19, "$i$f$fastFirstOrNull":I
    :goto_c
    if-ge v4, v1, :cond_d

    .line 1205
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 1206
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v20, v17

    .local v20, "it$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 1202
    .local v21, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v24, v20

    check-cast v24, Landroidx/compose/ui/layout/Measurable;

    .local v24, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v25, 0x0

    .line 682
    .local v25, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$labelPlaceable$1":I
    move/from16 v26, v1

    invoke-static/range {v24 .. v24}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v27, v5

    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v27, "$this$fastForEach$iv$iv":Ljava/util/List;
    const-string v5, "Label"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1202
    .end local v24    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v25    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$labelPlaceable$1":I
    if-eqz v1, :cond_c

    goto :goto_d

    .line 1206
    .end local v20    # "it$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_c
    nop

    .line 1204
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v26

    move-object/from16 v5, v27

    goto :goto_c

    .end local v27    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    :cond_d
    move-object/from16 v27, v5

    .line 1208
    .end local v4    # "index$iv$iv":I
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v27    # "$this$fastForEach$iv$iv":Ljava/util/List;
    nop

    .line 1209
    .end local v16    # "$i$f$fastForEach":I
    .end local v27    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v20, 0x0

    .line 682
    .end local v18    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastFirstOrNull":I
    :goto_d
    move-object/from16 v1, v20

    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    if-eqz v1, :cond_e

    invoke-interface {v1, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    goto :goto_e

    :cond_e
    const/4 v1, 0x0

    .line 681
    :goto_e
    nop

    .line 686
    .local v1, "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    move-object/from16 v4, p2

    .local v4, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1210
    .local v5, "$i$f$fastFirstOrNull":I
    nop

    .line 1211
    move-object/from16 v16, v4

    .local v16, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v17, 0x0

    .line 1212
    .local v17, "$i$f$fastForEach":I
    nop

    .line 1213
    const/16 v18, 0x0

    move-object/from16 v19, v4

    .end local v4    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v18, "index$iv$iv":I
    .local v19, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v20, v5

    move/from16 v5, v18

    .end local v18    # "index$iv$iv":I
    .local v5, "index$iv$iv":I
    .local v20, "$i$f$fastFirstOrNull":I
    :goto_f
    if-ge v5, v4, :cond_10

    .line 1214
    move/from16 v18, v4

    move-object/from16 v4, v16

    .end local v16    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 1215
    .local v16, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v21, v16

    .local v21, "it$iv":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 1211
    .local v24, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v25, v21

    check-cast v25, Landroidx/compose/ui/layout/Measurable;

    .local v25, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v26, 0x0

    .line 686
    .local v26, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$supportingMeasurable$1":I
    move-object/from16 v27, v4

    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v27    # "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v4

    move-wide/from16 v28, v10

    .end local v10    # "labelConstraints":J
    .local v28, "labelConstraints":J
    const-string/jumbo v10, "Supporting"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 1211
    .end local v25    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v26    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$supportingMeasurable$1":I
    if-eqz v4, :cond_f

    goto :goto_10

    .line 1215
    .end local v21    # "it$iv":Ljava/lang/Object;
    .end local v24    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_f
    nop

    .line 1213
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v18

    move-object/from16 v16, v27

    move-wide/from16 v10, v28

    goto :goto_f

    .end local v27    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v28    # "labelConstraints":J
    .restart local v10    # "labelConstraints":J
    .local v16, "$this$fastForEach$iv$iv":Ljava/util/List;
    :cond_10
    move-wide/from16 v28, v10

    move-object/from16 v27, v16

    .line 1217
    .end local v5    # "index$iv$iv":I
    .end local v10    # "labelConstraints":J
    .end local v16    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v27    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v28    # "labelConstraints":J
    nop

    .line 1218
    .end local v17    # "$i$f$fastForEach":I
    .end local v27    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v21, 0x0

    .line 686
    .end local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v20    # "$i$f$fastFirstOrNull":I
    :goto_10
    move-object/from16 v10, v21

    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 688
    .local v10, "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    const/16 v24, 0x0

    if-eqz v10, :cond_11

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v4

    invoke-interface {v10, v4}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    move-result v4

    goto :goto_11

    :cond_11
    move/from16 v4, v24

    .line 687
    :goto_11
    move/from16 v25, v4

    .line 691
    .local v25, "supportingIntrinsicHeight":I
    invoke-static {v1}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    add-int v11, v23, v4

    .line 692
    .local v11, "effectiveTopOffset":I
    nop

    .line 693
    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0xb

    const/16 v37, 0x0

    move-wide/from16 v30, p3

    invoke-static/range {v30 .. v37}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v4

    .line 695
    neg-int v14, v11

    sub-int/2addr v14, v13

    sub-int v14, v14, v25

    .line 696
    neg-int v15, v12

    .line 693
    nop

    .line 696
    nop

    .line 695
    nop

    .line 694
    invoke-static {v4, v5, v15, v14}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v4

    .line 692
    move-wide v14, v4

    .line 698
    .local v14, "textFieldConstraints":J
    nop

    .line 699
    move-object/from16 v4, p2

    .local v4, "$this$fastFirst$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1219
    .local v5, "$i$f$fastFirst":I
    nop

    .line 1220
    move-object/from16 v16, v4

    .restart local v16    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v17, 0x0

    .line 1221
    .restart local v17    # "$i$f$fastForEach":I
    nop

    .line 1222
    const/16 v18, 0x0

    move-object/from16 v19, v4

    .end local v4    # "$this$fastFirst$iv":Ljava/util/List;
    .restart local v18    # "index$iv$iv":I
    .local v19, "$this$fastFirst$iv":Ljava/util/List;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v20, v5

    move/from16 v5, v18

    .end local v18    # "index$iv$iv":I
    .local v5, "index$iv$iv":I
    .local v20, "$i$f$fastFirst":I
    :goto_12
    move/from16 v26, v12

    .end local v12    # "occupiedSpaceHorizontally":I
    .local v26, "occupiedSpaceHorizontally":I
    const-string v12, "Collection contains no element matching the predicate."

    if-ge v5, v4, :cond_1b

    .line 1223
    move/from16 v18, v4

    move-object/from16 v4, v16

    .end local v16    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 1224
    .local v16, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v21, v16

    .restart local v21    # "it$iv":Ljava/lang/Object;
    const/16 v27, 0x0

    .line 1220
    .local v27, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object/from16 v30, v21

    check-cast v30, Landroidx/compose/ui/layout/Measurable;

    .local v30, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v31, 0x0

    .line 699
    .local v31, "$i$a$-fastFirst-TextFieldMeasurePolicy$measure$textFieldPlaceable$1":I
    move-object/from16 v32, v4

    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v32, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-static/range {v30 .. v30}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v4

    move/from16 v33, v5

    .end local v5    # "index$iv$iv":I
    .local v33, "index$iv$iv":I
    const-string/jumbo v5, "TextField"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 1220
    .end local v30    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v31    # "$i$a$-fastFirst-TextFieldMeasurePolicy$measure$textFieldPlaceable$1":I
    if-eqz v4, :cond_1a

    .line 1227
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$fastForEach":I
    .end local v19    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v20    # "$i$f$fastFirst":I
    .end local v21    # "it$iv":Ljava/lang/Object;
    .end local v27    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v32    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v33    # "index$iv$iv":I
    move-object/from16 v4, v21

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 700
    invoke-interface {v4, v14, v15}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    .line 698
    nop

    .line 703
    .local v4, "textFieldPlaceable":Landroidx/compose/ui/layout/Placeable;
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xe

    const/16 v21, 0x0

    move-wide/from16 v30, v14

    .end local v14    # "textFieldConstraints":J
    .local v30, "textFieldConstraints":J
    invoke-static/range {v14 .. v21}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v14

    .line 706
    .local v14, "placeholderConstraints":J
    nop

    .line 704
    nop

    .line 705
    move-object/from16 v5, p2

    .local v5, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 1228
    .local v16, "$i$f$fastFirstOrNull":I
    nop

    .line 1229
    move-object/from16 v17, v5

    .local v17, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v18, 0x0

    .line 1230
    .local v18, "$i$f$fastForEach":I
    nop

    .line 1231
    const/16 v19, 0x0

    move-object/from16 v20, v5

    .end local v5    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v19, "index$iv$iv":I
    .local v20, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    move-object/from16 v34, v12

    move/from16 v12, v19

    .end local v19    # "index$iv$iv":I
    .local v12, "index$iv$iv":I
    :goto_13
    if-ge v12, v5, :cond_13

    .line 1232
    move/from16 v19, v5

    move-object/from16 v5, v17

    .end local v17    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 1233
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v21, v17

    .restart local v21    # "it$iv":Ljava/lang/Object;
    const/16 v27, 0x0

    .line 1229
    .local v27, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v32, v21

    check-cast v32, Landroidx/compose/ui/layout/Measurable;

    .local v32, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v33, 0x0

    .line 705
    .local v33, "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$placeholderPlaceable$1":I
    move-object/from16 v35, v5

    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v35, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-static/range {v32 .. v32}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v36, v10

    .end local v10    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .local v36, "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    const-string v10, "Hint"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 1229
    .end local v32    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v33    # "$i$a$-fastFirstOrNull-TextFieldMeasurePolicy$measure$placeholderPlaceable$1":I
    if-eqz v5, :cond_12

    goto :goto_14

    .line 1233
    .end local v21    # "it$iv":Ljava/lang/Object;
    .end local v27    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_12
    nop

    .line 1231
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v19

    move-object/from16 v17, v35

    move-object/from16 v10, v36

    goto :goto_13

    .end local v35    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v36    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .restart local v10    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .local v17, "$this$fastForEach$iv$iv":Ljava/util/List;
    :cond_13
    move-object/from16 v36, v10

    move-object/from16 v35, v17

    .line 1235
    .end local v10    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .end local v12    # "index$iv$iv":I
    .end local v17    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v35    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v36    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    nop

    .line 1236
    .end local v18    # "$i$f$fastForEach":I
    .end local v35    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v21, 0x0

    .line 705
    .end local v16    # "$i$f$fastFirstOrNull":I
    .end local v20    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_14
    move-object/from16 v5, v21

    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 706
    if-eqz v5, :cond_14

    .line 705
    nop

    .line 706
    invoke-interface {v5, v14, v15}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v5

    goto :goto_15

    :cond_14
    const/4 v5, 0x0

    .line 704
    :goto_15
    nop

    .line 708
    .local v5, "placeholderPlaceable":Landroidx/compose/ui/layout/Placeable;
    nop

    .line 710
    invoke-static {v4}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v10

    invoke-static {v5}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 711
    nop

    .line 710
    add-int/2addr v10, v11

    .line 711
    nop

    .line 710
    add-int/2addr v10, v13

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 708
    move v12, v10

    .line 714
    .end local v0    # "occupiedSpaceVertically":I
    .local v12, "occupiedSpaceVertically":I
    invoke-static {v6}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v37

    .line 715
    invoke-static {v7}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v38

    .line 716
    invoke-static {v8}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v39

    .line 717
    invoke-static {v9}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v40

    .line 718
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v41

    .line 719
    invoke-static {v1}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v42

    .line 720
    invoke-static {v5}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v43

    .line 721
    nop

    .line 713
    move-wide/from16 v44, p3

    invoke-static/range {v37 .. v45}, Landroidx/compose/material3/TextFieldKt;->access$calculateWidth-yeHjK3Y(IIIIIIIJ)I

    move-result v10

    .line 725
    .local v10, "width":I
    const/16 v18, 0x0

    .line 726
    neg-int v0, v12

    .line 725
    const/16 v20, 0x1

    const/16 v21, 0x0

    move-wide/from16 v16, v2

    move/from16 v19, v0

    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v44

    .line 727
    const/16 v46, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x9

    const/16 v51, 0x0

    move/from16 v47, v10

    invoke-static/range {v44 .. v51}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v16

    .line 725
    move-wide/from16 v32, v16

    .line 728
    .local v32, "supportingConstraints":J
    if-eqz v36, :cond_15

    move-wide/from16 v16, v14

    move-wide/from16 v14, v32

    move-object/from16 v0, v36

    .end local v32    # "supportingConstraints":J
    .end local v36    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .local v0, "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .local v14, "supportingConstraints":J
    .local v16, "placeholderConstraints":J
    invoke-interface {v0, v14, v15}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v18

    goto :goto_16

    .end local v0    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .end local v16    # "placeholderConstraints":J
    .local v14, "placeholderConstraints":J
    .restart local v32    # "supportingConstraints":J
    .restart local v36    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    :cond_15
    move-wide/from16 v16, v14

    move-wide/from16 v14, v32

    move-object/from16 v0, v36

    .end local v32    # "supportingConstraints":J
    .end local v36    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .restart local v0    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .local v14, "supportingConstraints":J
    .restart local v16    # "placeholderConstraints":J
    const/16 v18, 0x0

    :goto_16
    move/from16 v35, v11

    .end local v11    # "effectiveTopOffset":I
    .local v35, "effectiveTopOffset":I
    move-object/from16 v11, v18

    .line 729
    .local v11, "supportingPlaceable":Landroidx/compose/ui/layout/Placeable;
    invoke-static {v11}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v27

    .line 732
    .local v27, "supportingHeight":I
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v36

    .line 733
    invoke-static {v1}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v37

    .line 734
    invoke-static {v6}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v38

    .line 735
    invoke-static {v7}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v39

    .line 736
    invoke-static {v8}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v40

    .line 737
    invoke-static {v9}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v41

    .line 738
    invoke-static {v5}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v42

    .line 739
    invoke-static {v11}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v43

    .line 740
    move-wide/from16 v18, v14

    move-object/from16 v15, p0

    .end local v14    # "supportingConstraints":J
    .local v18, "supportingConstraints":J
    iget v14, v15, Landroidx/compose/material3/TextFieldMeasurePolicy;->animationProgress:F

    .line 741
    nop

    .line 742
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->getDensity()F

    move-result v47

    .line 743
    move-object/from16 v20, v0

    .end local v0    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .local v20, "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    iget-object v0, v15, Landroidx/compose/material3/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 731
    move/from16 v44, v14

    move-wide/from16 v45, p3

    move-object/from16 v48, v0

    invoke-static/range {v36 .. v48}, Landroidx/compose/material3/TextFieldKt;->access$calculateHeight-mKXJcVc(IIIIIIIIFJFLandroidx/compose/foundation/layout/PaddingValues;)I

    move-result v32

    .line 745
    .local v32, "totalHeight":I
    sub-int v14, v32, v27

    .line 747
    .local v14, "height":I
    move-object/from16 v0, p2

    .local v0, "$this$fastFirst$iv":Ljava/util/List;
    const/16 v21, 0x0

    .line 1237
    .local v21, "$i$f$fastFirst":I
    nop

    .line 1238
    move-object/from16 v22, v0

    .local v22, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v33, 0x0

    .line 1239
    .local v33, "$i$f$fastForEach":I
    nop

    .line 1240
    const/16 v36, 0x0

    move-object/from16 v37, v0

    .end local v0    # "$this$fastFirst$iv":Ljava/util/List;
    .local v36, "index$iv$iv":I
    .local v37, "$this$fastFirst$iv":Ljava/util/List;
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v0

    move-wide/from16 v38, v2

    move/from16 v2, v36

    .end local v36    # "index$iv$iv":I
    .local v2, "index$iv$iv":I
    .local v38, "looseConstraints":J
    :goto_17
    if-ge v2, v0, :cond_19

    .line 1241
    move-object/from16 v3, v22

    .end local v22    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    .line 1242
    .local v22, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v36, v22

    .local v36, "it$iv":Ljava/lang/Object;
    const/16 v40, 0x0

    .line 1238
    .local v40, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object/from16 v41, v36

    check-cast v41, Landroidx/compose/ui/layout/Measurable;

    .local v41, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v42, 0x0

    .line 747
    .local v42, "$i$a$-fastFirst-TextFieldMeasurePolicy$measure$containerPlaceable$1":I
    move/from16 v43, v0

    invoke-static/range {v41 .. v41}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v44, v3

    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v44, "$this$fastForEach$iv$iv":Ljava/util/List;
    const-string v3, "Container"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1238
    .end local v41    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v42    # "$i$a$-fastFirst-TextFieldMeasurePolicy$measure$containerPlaceable$1":I
    if-eqz v0, :cond_18

    .line 1245
    .end local v2    # "index$iv$iv":I
    .end local v21    # "$i$f$fastFirst":I
    .end local v22    # "item$iv$iv":Ljava/lang/Object;
    .end local v33    # "$i$f$fastForEach":I
    .end local v36    # "it$iv":Ljava/lang/Object;
    .end local v37    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v40    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v44    # "$this$fastForEach$iv$iv":Ljava/util/List;
    move-object/from16 v0, v36

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 749
    const v2, 0x7fffffff

    if-eq v10, v2, :cond_16

    move v3, v10

    goto :goto_18

    :cond_16
    move/from16 v3, v24

    .line 750
    :goto_18
    nop

    .line 751
    if-eq v14, v2, :cond_17

    move v2, v14

    goto :goto_19

    :cond_17
    move/from16 v2, v24

    .line 752
    :goto_19
    nop

    .line 748
    invoke-static {v3, v10, v2, v14}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v2

    .line 747
    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v24

    .line 756
    .local v24, "containerPlaceable":Landroidx/compose/ui/layout/Placeable;
    const/16 v21, 0x0

    new-instance v22, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;

    move-object/from16 v0, v22

    move v2, v10

    move/from16 v3, v32

    move/from16 v42, v10

    move-object/from16 v41, v20

    .end local v10    # "width":I
    .end local v20    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .local v41, "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .local v42, "width":I
    move-object/from16 v10, v24

    move/from16 v45, v12

    .end local v12    # "occupiedSpaceVertically":I
    .local v45, "occupiedSpaceVertically":I
    move-object/from16 v12, p0

    move/from16 v46, v13

    .end local v13    # "bottomPaddingValue":I
    .local v46, "bottomPaddingValue":I
    move/from16 v13, v23

    move/from16 v51, v14

    move-wide/from16 v47, v16

    move-wide/from16 v49, v18

    .end local v14    # "height":I
    .end local v16    # "placeholderConstraints":J
    .end local v18    # "supportingConstraints":J
    .local v47, "placeholderConstraints":J
    .local v49, "supportingConstraints":J
    .local v51, "height":I
    move-object/from16 v14, p1

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/TextFieldMeasurePolicy;ILandroidx/compose/ui/layout/MeasureScope;)V

    move-object/from16 v20, v22

    check-cast v20, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x4

    const/16 v22, 0x0

    move-object/from16 v16, p1

    move/from16 v17, v42

    move/from16 v18, v32

    move-object/from16 v19, v21

    move/from16 v21, v0

    invoke-static/range {v16 .. v22}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    .line 1238
    .end local v24    # "containerPlaceable":Landroidx/compose/ui/layout/Placeable;
    .end local v41    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .end local v42    # "width":I
    .end local v45    # "occupiedSpaceVertically":I
    .end local v46    # "bottomPaddingValue":I
    .end local v47    # "placeholderConstraints":J
    .end local v49    # "supportingConstraints":J
    .end local v51    # "height":I
    .restart local v2    # "index$iv$iv":I
    .restart local v10    # "width":I
    .restart local v12    # "occupiedSpaceVertically":I
    .restart local v13    # "bottomPaddingValue":I
    .restart local v14    # "height":I
    .restart local v16    # "placeholderConstraints":J
    .restart local v18    # "supportingConstraints":J
    .restart local v20    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .restart local v21    # "$i$f$fastFirst":I
    .restart local v22    # "item$iv$iv":Ljava/lang/Object;
    .restart local v33    # "$i$f$fastForEach":I
    .restart local v36    # "it$iv":Ljava/lang/Object;
    .restart local v37    # "$this$fastFirst$iv":Ljava/util/List;
    .restart local v40    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .restart local v44    # "$this$fastForEach$iv$iv":Ljava/util/List;
    :cond_18
    move/from16 v42, v10

    move/from16 v45, v12

    move/from16 v46, v13

    move/from16 v51, v14

    move-wide/from16 v47, v16

    move-wide/from16 v49, v18

    move-object/from16 v41, v20

    .line 1242
    .end local v10    # "width":I
    .end local v12    # "occupiedSpaceVertically":I
    .end local v13    # "bottomPaddingValue":I
    .end local v14    # "height":I
    .end local v16    # "placeholderConstraints":J
    .end local v18    # "supportingConstraints":J
    .end local v20    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .end local v36    # "it$iv":Ljava/lang/Object;
    .end local v40    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .restart local v41    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .restart local v42    # "width":I
    .restart local v45    # "occupiedSpaceVertically":I
    .restart local v46    # "bottomPaddingValue":I
    .restart local v47    # "placeholderConstraints":J
    .restart local v49    # "supportingConstraints":J
    .restart local v51    # "height":I
    nop

    .line 1240
    .end local v22    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v43

    move-object/from16 v22, v44

    goto/16 :goto_17

    .line 1244
    .end local v2    # "index$iv$iv":I
    .end local v41    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .end local v42    # "width":I
    .end local v44    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v45    # "occupiedSpaceVertically":I
    .end local v46    # "bottomPaddingValue":I
    .end local v47    # "placeholderConstraints":J
    .end local v49    # "supportingConstraints":J
    .end local v51    # "height":I
    .restart local v10    # "width":I
    .restart local v12    # "occupiedSpaceVertically":I
    .restart local v13    # "bottomPaddingValue":I
    .restart local v14    # "height":I
    .restart local v16    # "placeholderConstraints":J
    .restart local v18    # "supportingConstraints":J
    .restart local v20    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .local v22, "$this$fastForEach$iv$iv":Ljava/util/List;
    :cond_19
    nop

    .line 1245
    .end local v22    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v33    # "$i$f$fastForEach":I
    new-instance v0, Ljava/util/NoSuchElementException;

    move-object/from16 v2, v34

    invoke-direct {v0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1220
    .end local v4    # "textFieldPlaceable":Landroidx/compose/ui/layout/Placeable;
    .end local v5    # "placeholderPlaceable":Landroidx/compose/ui/layout/Placeable;
    .end local v12    # "occupiedSpaceVertically":I
    .end local v18    # "supportingConstraints":J
    .end local v30    # "textFieldConstraints":J
    .end local v35    # "effectiveTopOffset":I
    .end local v37    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v38    # "looseConstraints":J
    .local v0, "occupiedSpaceVertically":I
    .local v2, "looseConstraints":J
    .local v10, "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .local v11, "effectiveTopOffset":I
    .local v14, "textFieldConstraints":J
    .local v16, "item$iv$iv":Ljava/lang/Object;
    .local v17, "$i$f$fastForEach":I
    .local v19, "$this$fastFirst$iv":Ljava/util/List;
    .local v20, "$i$f$fastFirst":I
    .local v21, "it$iv":Ljava/lang/Object;
    .local v27, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .local v32, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v33, "index$iv$iv":I
    :cond_1a
    move-wide/from16 v38, v2

    move-object/from16 v41, v10

    move/from16 v35, v11

    move/from16 v46, v13

    move-wide/from16 v30, v14

    move-object/from16 v15, p0

    .line 1224
    .end local v2    # "looseConstraints":J
    .end local v10    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .end local v11    # "effectiveTopOffset":I
    .end local v13    # "bottomPaddingValue":I
    .end local v14    # "textFieldConstraints":J
    .end local v21    # "it$iv":Ljava/lang/Object;
    .end local v27    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .restart local v30    # "textFieldConstraints":J
    .restart local v35    # "effectiveTopOffset":I
    .restart local v38    # "looseConstraints":J
    .restart local v41    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .restart local v46    # "bottomPaddingValue":I
    nop

    .line 1222
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v33, 0x1

    move/from16 v4, v18

    move/from16 v12, v26

    move-wide/from16 v14, v30

    move-object/from16 v16, v32

    .end local v33    # "index$iv$iv":I
    .local v5, "index$iv$iv":I
    goto/16 :goto_12

    .end local v30    # "textFieldConstraints":J
    .end local v32    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v35    # "effectiveTopOffset":I
    .end local v38    # "looseConstraints":J
    .end local v41    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .end local v46    # "bottomPaddingValue":I
    .restart local v2    # "looseConstraints":J
    .restart local v10    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .restart local v11    # "effectiveTopOffset":I
    .restart local v13    # "bottomPaddingValue":I
    .restart local v14    # "textFieldConstraints":J
    .local v16, "$this$fastForEach$iv$iv":Ljava/util/List;
    :cond_1b
    move-wide/from16 v38, v2

    move-object v2, v12

    .line 1226
    .end local v2    # "looseConstraints":J
    .end local v5    # "index$iv$iv":I
    .restart local v38    # "looseConstraints":J
    nop

    .line 1227
    .end local v16    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v17    # "$i$f$fastForEach":I
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1, "$this$minIntrinsicHeight"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 809
    sget-object v0, Landroidx/compose/material3/TextFieldMeasurePolicy$minIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material3/TextFieldMeasurePolicy$minIntrinsicHeight$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material3/TextFieldMeasurePolicy;->intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result v0

    return v0
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1, "$this$minIntrinsicWidth"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 827
    sget-object v0, Landroidx/compose/material3/TextFieldMeasurePolicy$minIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material3/TextFieldMeasurePolicy$minIntrinsicWidth$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p2, p3, v0}, Landroidx/compose/material3/TextFieldMeasurePolicy;->intrinsicWidth(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result v0

    return v0
.end method
