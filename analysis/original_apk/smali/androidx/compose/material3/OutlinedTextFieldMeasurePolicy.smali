.class final Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;
.super Ljava/lang/Object;
.source "OutlinedTextField.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutlinedTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutlinedTextField.kt\nandroidx/compose/material3/OutlinedTextFieldMeasurePolicy\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,1156:1\n116#2,2:1157\n33#2,6:1159\n118#2:1165\n116#2,2:1166\n33#2,6:1168\n118#2:1174\n116#2,2:1175\n33#2,6:1177\n118#2:1183\n116#2,2:1184\n33#2,6:1186\n118#2:1192\n116#2,2:1193\n33#2,6:1195\n118#2:1201\n116#2,2:1202\n33#2,6:1204\n118#2:1210\n544#2,2:1211\n33#2,6:1213\n546#2:1219\n116#2,2:1220\n33#2,6:1222\n118#2:1228\n544#2,2:1229\n33#2,6:1231\n546#2:1237\n544#2,2:1238\n33#2,6:1240\n546#2:1246\n116#2,2:1247\n33#2,6:1249\n118#2:1255\n116#2,2:1256\n33#2,6:1258\n118#2:1264\n116#2,2:1265\n33#2,6:1267\n118#2:1273\n116#2,2:1274\n33#2,6:1276\n118#2:1282\n116#2,2:1283\n33#2,6:1285\n118#2:1291\n116#2,2:1292\n33#2,6:1294\n118#2:1300\n116#2,2:1301\n33#2,6:1303\n118#2:1309\n116#2,2:1310\n33#2,6:1312\n118#2:1318\n116#2,2:1319\n33#2,6:1321\n118#2:1327\n116#2,2:1328\n33#2,6:1330\n118#2:1336\n116#2,2:1337\n33#2,6:1339\n118#2:1345\n544#2,2:1346\n33#2,6:1348\n546#2:1354\n116#2,2:1355\n33#2,6:1357\n118#2:1363\n116#2,2:1364\n33#2,6:1366\n118#2:1372\n*S KotlinDebug\n*F\n+ 1 OutlinedTextField.kt\nandroidx/compose/material3/OutlinedTextFieldMeasurePolicy\n*L\n653#1:1157,2\n653#1:1159,6\n653#1:1165\n660#1:1166,2\n660#1:1168,6\n660#1:1174\n666#1:1175,2\n666#1:1177,6\n666#1:1183\n672#1:1184,2\n672#1:1186,6\n672#1:1192\n690#1:1193,2\n690#1:1195,6\n690#1:1201\n697#1:1202,2\n697#1:1204,6\n697#1:1210\n711#1:1211,2\n711#1:1213,6\n711#1:1219\n715#1:1220,2\n715#1:1222,6\n715#1:1228\n763#1:1229,2\n763#1:1231,6\n763#1:1237\n835#1:1238,2\n835#1:1240,6\n835#1:1246\n836#1:1247,2\n836#1:1249,6\n836#1:1255\n839#1:1256,2\n839#1:1258,6\n839#1:1264\n842#1:1265,2\n842#1:1267,6\n842#1:1273\n845#1:1274,2\n845#1:1276,6\n845#1:1282\n848#1:1283,2\n848#1:1285,6\n848#1:1291\n851#1:1292,2\n851#1:1294,6\n851#1:1300\n875#1:1301,2\n875#1:1303,6\n875#1:1309\n881#1:1310,2\n881#1:1312,6\n881#1:1318\n888#1:1319,2\n888#1:1321,6\n888#1:1327\n892#1:1328,2\n892#1:1330,6\n892#1:1336\n899#1:1337,2\n899#1:1339,6\n899#1:1345\n908#1:1346,2\n908#1:1348,6\n908#1:1354\n910#1:1355,2\n910#1:1357,6\n910#1:1363\n914#1:1364,2\n914#1:1366,6\n914#1:1372\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B1\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ<\u0010\r\u001a\u00020\u000e*\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u000e2\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u0015H\u0002J<\u0010\u0016\u001a\u00020\u000e*\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0017\u001a\u00020\u000e2\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u0015H\u0002J\"\u0010\u0018\u001a\u00020\u000e*\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u000eH\u0016J\"\u0010\u0019\u001a\u00020\u000e*\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0017\u001a\u00020\u000eH\u0016J,\u0010\u001a\u001a\u00020\u001b*\u00020\u001c2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00112\u0006\u0010\u001e\u001a\u00020\u001fH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010!J\"\u0010\"\u001a\u00020\u000e*\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u000eH\u0016J\"\u0010#\u001a\u00020\u000e*\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0017\u001a\u00020\u000eH\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "onLabelMeasured",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/geometry/Size;",
        "",
        "singleLine",
        "",
        "animationProgress",
        "",
        "paddingValues",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "(Lkotlin/jvm/functions/Function1;ZFLandroidx/compose/foundation/layout/PaddingValues;)V",
        "intrinsicHeight",
        "",
        "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "width",
        "intrinsicMeasurer",
        "Lkotlin/Function2;",
        "intrinsicWidth",
        "height",
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

.field private final onLabelMeasured:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/geometry/Size;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

.field private final singleLine:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;ZFLandroidx/compose/foundation/layout/PaddingValues;)V
    .locals 0
    .param p1, "onLabelMeasured"    # Lkotlin/jvm/functions/Function1;
    .param p2, "singleLine"    # Z
    .param p3, "animationProgress"    # F
    .param p4, "paddingValues"    # Landroidx/compose/foundation/layout/PaddingValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Size;",
            "Lkotlin/Unit;",
            ">;ZF",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            ")V"
        }
    .end annotation

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    iput-object p1, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->onLabelMeasured:Lkotlin/jvm/functions/Function1;

    .line 638
    iput-boolean p2, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->singleLine:Z

    .line 639
    iput p3, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->animationProgress:F

    .line 640
    iput-object p4, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 636
    return-void
.end method

.method public static final synthetic access$getAnimationProgress$p(Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;)F
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    .line 636
    iget v0, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->animationProgress:F

    return v0
.end method

.method public static final synthetic access$getPaddingValues$p(Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    .line 636
    iget-object v0, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
.end method

.method public static final synthetic access$getSingleLine$p(Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    .line 636
    iget-boolean v0, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->singleLine:Z

    return v0
.end method

.method private final intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 30
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

    .line 1301
    .local v4, "$i$f$fastFirstOrNull":I
    nop

    .line 1302
    move-object v5, v3

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1303
    .local v6, "$i$f$fastForEach":I
    nop

    .line 1304
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_1

    .line 1305
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1306
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1302
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v13, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v14, 0x0

    .line 875
    .local v14, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$leadingHeight$1":I
    invoke-static {v13}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    const-string/jumbo v9, "Leading"

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 1302
    .end local v13    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v14    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$leadingHeight$1":I
    if-eqz v9, :cond_0

    goto :goto_1

    .line 1306
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_0
    nop

    .line 1304
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1308
    .end local v7    # "index$iv$iv":I
    :cond_1
    nop

    .line 1309
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
    .local v6, "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$leadingHeight$2":I
    nop

    .line 877
    invoke-interface {v5, v3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v7

    .line 876
    invoke-static {v2, v7}, Landroidx/compose/material3/OutlinedTextFieldKt;->access$substractConstraintSafely(II)I

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
    .end local v6    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$leadingHeight$2":I
    move/from16 v16, v5

    goto :goto_2

    .line 880
    :cond_2
    const/16 v16, 0x0

    .line 875
    :goto_2
    nop

    .line 881
    .local v16, "leadingHeight":I
    move-object/from16 v5, p2

    .local v5, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1310
    .local v6, "$i$f$fastFirstOrNull":I
    nop

    .line 1311
    move-object v7, v5

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 1312
    .local v8, "$i$f$fastForEach":I
    nop

    .line 1313
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    :goto_3
    if-ge v9, v10, :cond_4

    .line 1314
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1315
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1311
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v14, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v15, 0x0

    .line 881
    .local v15, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$trailingHeight$1":I
    invoke-static {v14}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v3, "Trailing"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 1311
    .end local v14    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v15    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$trailingHeight$1":I
    if-eqz v3, :cond_3

    goto :goto_4

    .line 1315
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_3
    nop

    .line 1313
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    const v3, 0x7fffffff

    goto :goto_3

    .line 1317
    .end local v9    # "index$iv$iv":I
    :cond_4
    nop

    .line 1318
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
    .local v4, "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$trailingHeight$2":I
    nop

    .line 883
    const v5, 0x7fffffff

    invoke-interface {v3, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v6

    .line 882
    invoke-static {v2, v6}, Landroidx/compose/material3/OutlinedTextFieldKt;->access$substractConstraintSafely(II)I

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
    .end local v4    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$trailingHeight$2":I
    move/from16 v17, v3

    goto :goto_5

    .line 886
    :cond_5
    const/16 v17, 0x0

    .line 881
    :goto_5
    nop

    .line 888
    .local v17, "trailingHeight":I
    move-object/from16 v3, p2

    .local v3, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1319
    .local v4, "$i$f$fastFirstOrNull":I
    nop

    .line 1320
    move-object v5, v3

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1321
    .local v6, "$i$f$fastForEach":I
    nop

    .line 1322
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_6
    if-ge v7, v8, :cond_7

    .line 1323
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1324
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1320
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v12, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v13, 0x0

    .line 888
    .local v13, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$labelHeight$1":I
    invoke-static {v12}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "Label"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 1320
    .end local v12    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v13    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$labelHeight$1":I
    if-eqz v12, :cond_6

    goto :goto_7

    .line 1324
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_6
    nop

    .line 1322
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1326
    .end local v7    # "index$iv$iv":I
    :cond_7
    nop

    .line 1327
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    const/4 v10, 0x0

    .line 888
    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastFirstOrNull":I
    :goto_7
    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v10, :cond_8

    move-object v3, v10

    .local v3, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 889
    .local v4, "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$labelHeight$2":I
    iget v5, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->animationProgress:F

    move/from16 v6, p3

    invoke-static {v2, v6, v5}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 888
    .end local v3    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$labelHeight$2":I
    move/from16 v21, v3

    goto :goto_8

    .line 890
    :cond_8
    move/from16 v6, p3

    const/16 v21, 0x0

    .line 888
    :goto_8
    nop

    .line 892
    .local v21, "labelHeight":I
    move-object/from16 v3, p2

    .local v3, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1328
    .local v4, "$i$f$fastFirstOrNull":I
    nop

    .line 1329
    move-object v5, v3

    .restart local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1330
    .local v7, "$i$f$fastForEach":I
    nop

    .line 1331
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    :goto_9
    if-ge v8, v9, :cond_a

    .line 1332
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1333
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1329
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v13, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v14, 0x0

    .line 892
    .local v14, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$prefixHeight$1":I
    invoke-static {v13}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v18, v3

    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v18, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const-string/jumbo v3, "Prefix"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 1329
    .end local v13    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v14    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$prefixHeight$1":I
    if-eqz v3, :cond_9

    goto :goto_a

    .line 1333
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_9
    nop

    .line 1331
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v18

    goto :goto_9

    .end local v18    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :cond_a
    move-object/from16 v18, v3

    .line 1335
    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v8    # "index$iv$iv":I
    .restart local v18    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    nop

    .line 1336
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/4 v11, 0x0

    .line 892
    .end local v4    # "$i$f$fastFirstOrNull":I
    .end local v18    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_a
    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v11, :cond_b

    move-object v3, v11

    .local v3, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 893
    .local v4, "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$prefixHeight$2":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 894
    .local v5, "height":I
    nop

    .line 895
    const v7, 0x7fffffff

    invoke-interface {v3, v7}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v8

    .line 894
    invoke-static {v2, v8}, Landroidx/compose/material3/OutlinedTextFieldKt;->access$substractConstraintSafely(II)I

    move-result v2

    .line 897
    nop

    .line 892
    .end local v3    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$prefixHeight$2":I
    .end local v5    # "height":I
    move/from16 v18, v5

    goto :goto_b

    .line 898
    :cond_b
    const/16 v18, 0x0

    .line 892
    :goto_b
    nop

    .line 899
    .local v18, "prefixHeight":I
    move-object/from16 v3, p2

    .local v3, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1337
    .local v4, "$i$f$fastFirstOrNull":I
    nop

    .line 1338
    move-object v5, v3

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1339
    .restart local v7    # "$i$f$fastForEach":I
    nop

    .line 1340
    const/4 v8, 0x0

    .restart local v8    # "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    :goto_c
    if-ge v8, v9, :cond_d

    .line 1341
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1342
    .restart local v10    # "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .restart local v11    # "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1338
    .restart local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .restart local v13    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v14, 0x0

    .line 899
    .local v14, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$suffixHeight$1":I
    invoke-static {v13}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v20, v3

    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v20, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const-string/jumbo v3, "Suffix"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 1338
    .end local v13    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v14    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$suffixHeight$1":I
    if-eqz v3, :cond_c

    goto :goto_d

    .line 1342
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_c
    nop

    .line 1340
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v20

    goto :goto_c

    .end local v20    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :cond_d
    move-object/from16 v20, v3

    .line 1344
    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v8    # "index$iv$iv":I
    .restart local v20    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    nop

    .line 1345
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/4 v11, 0x0

    .line 899
    .end local v4    # "$i$f$fastFirstOrNull":I
    .end local v20    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_d
    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v11, :cond_e

    move-object v3, v11

    .local v3, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 900
    .local v4, "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$suffixHeight$2":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 901
    .local v5, "height":I
    nop

    .line 902
    const v7, 0x7fffffff

    invoke-interface {v3, v7}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v7

    .line 901
    invoke-static {v2, v7}, Landroidx/compose/material3/OutlinedTextFieldKt;->access$substractConstraintSafely(II)I

    move-result v2

    .line 904
    nop

    .line 899
    .end local v3    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$suffixHeight$2":I
    .end local v5    # "height":I
    move/from16 v19, v5

    goto :goto_e

    .line 905
    :cond_e
    const/16 v19, 0x0

    .line 899
    :goto_e
    nop

    .line 908
    .local v19, "suffixHeight":I
    move-object/from16 v3, p2

    .local v3, "$this$fastFirst$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1346
    .local v4, "$i$f$fastFirst":I
    nop

    .line 1347
    move-object v5, v3

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1348
    .restart local v7    # "$i$f$fastForEach":I
    nop

    .line 1349
    const/4 v8, 0x0

    .restart local v8    # "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    :goto_f
    if-ge v8, v9, :cond_16

    .line 1350
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1351
    .restart local v10    # "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .restart local v11    # "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1347
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .restart local v13    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v14, 0x0

    .line 908
    .local v14, "$i$a$-fastFirst-OutlinedTextFieldMeasurePolicy$intrinsicHeight$textFieldHeight$1":I
    invoke-static {v13}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v20, v3

    .end local v3    # "$this$fastFirst$iv":Ljava/util/List;
    .local v20, "$this$fastFirst$iv":Ljava/util/List;
    const-string/jumbo v3, "TextField"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 1347
    .end local v13    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v14    # "$i$a$-fastFirst-OutlinedTextFieldMeasurePolicy$intrinsicHeight$textFieldHeight$1":I
    if-eqz v3, :cond_15

    .line 908
    .end local v4    # "$i$f$fastFirst":I
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    .end local v8    # "index$iv$iv":I
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v20    # "$this$fastFirst$iv":Ljava/util/List;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v11, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v20

    .line 907
    nop

    .line 910
    .local v20, "textFieldHeight":I
    move-object/from16 v3, p2

    .local v3, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1355
    .local v4, "$i$f$fastFirstOrNull":I
    nop

    .line 1356
    move-object v5, v3

    .restart local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1357
    .restart local v7    # "$i$f$fastForEach":I
    nop

    .line 1358
    const/4 v8, 0x0

    .restart local v8    # "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    :goto_10
    if-ge v8, v9, :cond_10

    .line 1359
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1360
    .restart local v10    # "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .restart local v11    # "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1356
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .restart local v13    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v14, 0x0

    .line 910
    .local v14, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$placeholderHeight$1":I
    invoke-static {v13}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v22, v3

    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v22, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const-string v3, "Hint"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 1356
    .end local v13    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v14    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$placeholderHeight$1":I
    if-eqz v3, :cond_f

    goto :goto_11

    .line 1360
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_f
    nop

    .line 1358
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v22

    goto :goto_10

    .end local v22    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :cond_10
    move-object/from16 v22, v3

    .line 1362
    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v8    # "index$iv$iv":I
    .restart local v22    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    nop

    .line 1363
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/4 v11, 0x0

    .line 910
    .end local v4    # "$i$f$fastFirstOrNull":I
    .end local v22    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_11
    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v11, :cond_11

    move-object v3, v11

    .local v3, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 911
    .local v4, "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$placeholderHeight$2":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 910
    .end local v3    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$placeholderHeight$2":I
    move/from16 v22, v3

    goto :goto_12

    .line 912
    :cond_11
    const/16 v22, 0x0

    .line 910
    :goto_12
    nop

    .line 914
    .local v22, "placeholderHeight":I
    move-object/from16 v3, p2

    .local v3, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1364
    .local v4, "$i$f$fastFirstOrNull":I
    nop

    .line 1365
    move-object v5, v3

    .restart local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1366
    .restart local v7    # "$i$f$fastForEach":I
    nop

    .line 1367
    const/4 v8, 0x0

    .restart local v8    # "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    :goto_13
    if-ge v8, v9, :cond_13

    .line 1368
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1369
    .restart local v10    # "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .restart local v11    # "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1365
    .restart local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .restart local v13    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v14, 0x0

    .line 914
    .local v14, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$supportingHeight$1":I
    invoke-static {v13}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    move/from16 v29, v2

    .end local v2    # "remainingWidth":I
    .local v29, "remainingWidth":I
    const-string/jumbo v2, "Supporting"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1365
    .end local v13    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v14    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$supportingHeight$1":I
    if-eqz v2, :cond_12

    move-object v9, v11

    goto :goto_14

    .line 1369
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_12
    nop

    .line 1367
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v29

    goto :goto_13

    .end local v29    # "remainingWidth":I
    .restart local v2    # "remainingWidth":I
    :cond_13
    move/from16 v29, v2

    .line 1371
    .end local v2    # "remainingWidth":I
    .end local v8    # "index$iv$iv":I
    .restart local v29    # "remainingWidth":I
    nop

    .line 1372
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/4 v9, 0x0

    .line 914
    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastFirstOrNull":I
    :goto_14
    check-cast v9, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v9, :cond_14

    move-object v2, v9

    .local v2, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v3, 0x0

    .line 915
    .local v3, "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$supportingHeight$2":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 914
    .end local v2    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v3    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$supportingHeight$2":I
    move/from16 v23, v4

    goto :goto_15

    .line 916
    :cond_14
    const/16 v23, 0x0

    .line 914
    :goto_15
    nop

    .line 919
    .local v23, "supportingHeight":I
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
    nop

    .line 926
    nop

    .line 927
    iget v2, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->animationProgress:F

    .line 928
    invoke-static {}, Landroidx/compose/material3/TextFieldImplKt;->getZeroConstraints()J

    move-result-wide v25

    .line 929
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getDensity()F

    move-result v27

    .line 930
    iget-object v3, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 918
    move/from16 v24, v2

    move-object/from16 v28, v3

    invoke-static/range {v16 .. v28}, Landroidx/compose/material3/OutlinedTextFieldKt;->access$calculateHeight-mKXJcVc(IIIIIIIIFJFLandroidx/compose/foundation/layout/PaddingValues;)I

    move-result v2

    return v2

    .line 1347
    .end local v22    # "placeholderHeight":I
    .end local v23    # "supportingHeight":I
    .end local v29    # "remainingWidth":I
    .local v2, "remainingWidth":I
    .local v4, "$i$f$fastFirst":I
    .restart local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v7    # "$i$f$fastForEach":I
    .restart local v8    # "index$iv$iv":I
    .restart local v10    # "item$iv$iv":Ljava/lang/Object;
    .restart local v11    # "it$iv":Ljava/lang/Object;
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .local v20, "$this$fastFirst$iv":Ljava/util/List;
    :cond_15
    move/from16 v29, v2

    .line 1351
    .end local v2    # "remainingWidth":I
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .restart local v29    # "remainingWidth":I
    nop

    .line 1349
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v20

    goto/16 :goto_f

    .end local v20    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v29    # "remainingWidth":I
    .restart local v2    # "remainingWidth":I
    .local v3, "$this$fastFirst$iv":Ljava/util/List;
    :cond_16
    move/from16 v29, v2

    move-object/from16 v20, v3

    .line 1353
    .end local v2    # "remainingWidth":I
    .end local v3    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v8    # "index$iv$iv":I
    .restart local v20    # "$this$fastFirst$iv":Ljava/util/List;
    .restart local v29    # "remainingWidth":I
    nop

    .line 1354
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    new-instance v2, Ljava/util/NoSuchElementException;

    const-string v3, "Collection contains no element matching the predicate."

    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final intrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 21
    .param p1, "$this$intrinsicWidth"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "height"    # I
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

    .line 835
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    .local v2, "$this$fastFirst$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1238
    .local v3, "$i$f$fastFirst":I
    nop

    .line 1239
    move-object v4, v2

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1240
    .local v5, "$i$f$fastForEach":I
    nop

    .line 1241
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_13

    .line 1242
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1243
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1239
    .local v10, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v11, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v12, 0x0

    .line 835
    .local v12, "$i$a$-fastFirst-OutlinedTextFieldMeasurePolicy$intrinsicWidth$textFieldWidth$1":I
    invoke-static {v11}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v13

    const-string/jumbo v14, "TextField"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .line 1239
    .end local v11    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v12    # "$i$a$-fastFirst-OutlinedTextFieldMeasurePolicy$intrinsicWidth$textFieldWidth$1":I
    if-eqz v11, :cond_12

    .line 835
    .end local v2    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastFirst":I
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    .end local v6    # "index$iv$iv":I
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 834
    nop

    .line 836
    .local v7, "textFieldWidth":I
    move-object/from16 v2, p2

    .local v2, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1247
    .local v3, "$i$f$fastFirstOrNull":I
    nop

    .line 1248
    move-object v4, v2

    .restart local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1249
    .restart local v5    # "$i$f$fastForEach":I
    nop

    .line 1250
    const/4 v6, 0x0

    .restart local v6    # "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    :goto_1
    if-ge v6, v8, :cond_1

    .line 1251
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1252
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1248
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v13, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v14, 0x0

    .line 836
    .local v14, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicWidth$labelWidth$1":I
    invoke-static {v13}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    const-string v9, "Label"

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 1248
    .end local v13    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v14    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicWidth$labelWidth$1":I
    if-eqz v9, :cond_0

    goto :goto_2

    .line 1252
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_0
    nop

    .line 1250
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1254
    .end local v6    # "index$iv$iv":I
    :cond_1
    nop

    .line 1255
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    const/4 v11, 0x0

    .line 836
    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastFirstOrNull":I
    :goto_2
    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v11, :cond_2

    move-object v3, v11

    .local v3, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 837
    .local v4, "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicWidth$labelWidth$2":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 836
    .end local v3    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicWidth$labelWidth$2":I
    move v8, v3

    goto :goto_3

    .line 838
    :cond_2
    const/4 v8, 0x0

    .line 836
    :goto_3
    nop

    .line 839
    .local v8, "labelWidth":I
    move-object/from16 v3, p2

    .local v3, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1256
    .local v4, "$i$f$fastFirstOrNull":I
    nop

    .line 1257
    move-object v5, v3

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1258
    .local v6, "$i$f$fastForEach":I
    nop

    .line 1259
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    :goto_4
    if-ge v9, v10, :cond_4

    .line 1260
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1261
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1257
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v14, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v15, 0x0

    .line 839
    .local v15, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicWidth$trailingWidth$1":I
    invoke-static {v14}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v3

    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v16, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const-string/jumbo v3, "Trailing"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1257
    .end local v14    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v15    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicWidth$trailingWidth$1":I
    if-eqz v2, :cond_3

    goto :goto_5

    .line 1261
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_3
    nop

    .line 1259
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v16

    goto :goto_4

    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :cond_4
    move-object/from16 v16, v3

    .line 1263
    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v9    # "index$iv$iv":I
    .restart local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    nop

    .line 1264
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    const/4 v12, 0x0

    .line 839
    .end local v4    # "$i$f$fastFirstOrNull":I
    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_5
    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v12, :cond_5

    move-object v2, v12

    .local v2, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v3, 0x0

    .line 840
    .local v3, "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicWidth$trailingWidth$2":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 839
    .end local v2    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v3    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicWidth$trailingWidth$2":I
    move v4, v2

    goto :goto_6

    .line 841
    :cond_5
    const/4 v4, 0x0

    .line 839
    :goto_6
    nop

    .line 842
    .local v4, "trailingWidth":I
    move-object/from16 v2, p2

    .local v2, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1265
    .local v3, "$i$f$fastFirstOrNull":I
    nop

    .line 1266
    move-object v5, v2

    .restart local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1267
    .restart local v6    # "$i$f$fastForEach":I
    nop

    .line 1268
    const/4 v9, 0x0

    .restart local v9    # "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    :goto_7
    if-ge v9, v10, :cond_7

    .line 1269
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1270
    .restart local v11    # "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .restart local v12    # "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1266
    .restart local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .restart local v14    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v15, 0x0

    .line 842
    .local v15, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicWidth$leadingWidth$1":I
    move-object/from16 v16, v2

    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static {v14}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v2

    move/from16 v17, v3

    .end local v3    # "$i$f$fastFirstOrNull":I
    .local v17, "$i$f$fastFirstOrNull":I
    const-string/jumbo v3, "Leading"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1266
    .end local v14    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v15    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicWidth$leadingWidth$1":I
    if-eqz v2, :cond_6

    goto :goto_8

    .line 1270
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_6
    nop

    .line 1268
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v16

    move/from16 v3, v17

    goto :goto_7

    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v17    # "$i$f$fastFirstOrNull":I
    .restart local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v3    # "$i$f$fastFirstOrNull":I
    :cond_7
    move-object/from16 v16, v2

    move/from16 v17, v3

    .line 1272
    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastFirstOrNull":I
    .end local v9    # "index$iv$iv":I
    .restart local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v17    # "$i$f$fastFirstOrNull":I
    nop

    .line 1273
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    const/4 v12, 0x0

    .line 842
    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v17    # "$i$f$fastFirstOrNull":I
    :goto_8
    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v12, :cond_8

    move-object v2, v12

    .local v2, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v3, 0x0

    .line 843
    .local v3, "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicWidth$leadingWidth$2":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 842
    .end local v2    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v3    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicWidth$leadingWidth$2":I
    move v3, v2

    goto :goto_9

    .line 844
    :cond_8
    const/4 v3, 0x0

    .line 842
    :goto_9
    nop

    .line 845
    .local v3, "leadingWidth":I
    move-object/from16 v2, p2

    .local v2, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1274
    .local v5, "$i$f$fastFirstOrNull":I
    nop

    .line 1275
    move-object v6, v2

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 1276
    .local v9, "$i$f$fastForEach":I
    nop

    .line 1277
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    :goto_a
    if-ge v10, v11, :cond_a

    .line 1278
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 1279
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 1275
    .local v14, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v15, v13

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v15, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v16, 0x0

    .line 845
    .local v16, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicWidth$prefixWidth$1":I
    move-object/from16 v17, v2

    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v17, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static {v15}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v2

    move/from16 v18, v5

    .end local v5    # "$i$f$fastFirstOrNull":I
    .local v18, "$i$f$fastFirstOrNull":I
    const-string/jumbo v5, "Prefix"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1275
    .end local v15    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v16    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicWidth$prefixWidth$1":I
    if-eqz v2, :cond_9

    goto :goto_b

    .line 1279
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_9
    nop

    .line 1277
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v17

    move/from16 v5, v18

    goto :goto_a

    .end local v17    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastFirstOrNull":I
    .restart local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v5    # "$i$f$fastFirstOrNull":I
    :cond_a
    move-object/from16 v17, v2

    move/from16 v18, v5

    .line 1281
    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastFirstOrNull":I
    .end local v10    # "index$iv$iv":I
    .restart local v17    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v18    # "$i$f$fastFirstOrNull":I
    nop

    .line 1282
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    const/4 v13, 0x0

    .line 845
    .end local v17    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastFirstOrNull":I
    :goto_b
    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v13, :cond_b

    move-object v2, v13

    .local v2, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v5, 0x0

    .line 846
    .local v5, "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicWidth$prefixWidth$2":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v2, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 845
    .end local v2    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v5    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicWidth$prefixWidth$2":I
    move v5, v2

    goto :goto_c

    .line 847
    :cond_b
    const/4 v5, 0x0

    .line 845
    :goto_c
    nop

    .line 848
    .local v5, "prefixWidth":I
    move-object/from16 v2, p2

    .local v2, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1283
    .local v6, "$i$f$fastFirstOrNull":I
    nop

    .line 1284
    move-object v9, v2

    .local v9, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 1285
    .local v10, "$i$f$fastForEach":I
    nop

    .line 1286
    const/4 v11, 0x0

    .local v11, "index$iv$iv":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    :goto_d
    if-ge v11, v12, :cond_d

    .line 1287
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 1288
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 1284
    .local v15, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v16, v14

    check-cast v16, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v16, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v17, 0x0

    .line 848
    .local v17, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicWidth$suffixWidth$1":I
    move-object/from16 v18, v2

    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v18, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static/range {v16 .. v16}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v2

    move/from16 v19, v6

    .end local v6    # "$i$f$fastFirstOrNull":I
    .local v19, "$i$f$fastFirstOrNull":I
    const-string/jumbo v6, "Suffix"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1284
    .end local v16    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v17    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicWidth$suffixWidth$1":I
    if-eqz v2, :cond_c

    goto :goto_e

    .line 1288
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_c
    nop

    .line 1286
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v18

    move/from16 v6, v19

    goto :goto_d

    .end local v18    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastFirstOrNull":I
    .restart local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v6    # "$i$f$fastFirstOrNull":I
    :cond_d
    move-object/from16 v18, v2

    move/from16 v19, v6

    .line 1290
    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastFirstOrNull":I
    .end local v11    # "index$iv$iv":I
    .restart local v18    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v19    # "$i$f$fastFirstOrNull":I
    nop

    .line 1291
    .end local v9    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastForEach":I
    const/4 v14, 0x0

    .line 848
    .end local v18    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastFirstOrNull":I
    :goto_e
    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v14, :cond_e

    move-object v2, v14

    .local v2, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v6, 0x0

    .line 849
    .local v6, "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicWidth$suffixWidth$2":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v2, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 848
    .end local v2    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v6    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicWidth$suffixWidth$2":I
    move v6, v2

    goto :goto_f

    .line 850
    :cond_e
    const/4 v6, 0x0

    .line 848
    :goto_f
    nop

    .line 851
    .local v6, "suffixWidth":I
    move-object/from16 v2, p2

    .local v2, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 1292
    .local v9, "$i$f$fastFirstOrNull":I
    nop

    .line 1293
    move-object v10, v2

    .local v10, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 1294
    .local v11, "$i$f$fastForEach":I
    nop

    .line 1295
    const/4 v12, 0x0

    .local v12, "index$iv$iv":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    :goto_10
    if-ge v12, v13, :cond_10

    .line 1296
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 1297
    .local v14, "item$iv$iv":Ljava/lang/Object;
    move-object v15, v14

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 1293
    .local v16, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v17, v15

    check-cast v17, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v17, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v18, 0x0

    .line 851
    .local v18, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicWidth$placeholderWidth$1":I
    move-object/from16 v19, v2

    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v19, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static/range {v17 .. v17}, Landroidx/compose/material3/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v2

    move/from16 v20, v9

    .end local v9    # "$i$f$fastFirstOrNull":I
    .local v20, "$i$f$fastFirstOrNull":I
    const-string v9, "Hint"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1293
    .end local v17    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v18    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicWidth$placeholderWidth$1":I
    if-eqz v2, :cond_f

    move-object v9, v15

    goto :goto_11

    .line 1297
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_f
    nop

    .line 1295
    .end local v14    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v19

    move/from16 v9, v20

    goto :goto_10

    .end local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v20    # "$i$f$fastFirstOrNull":I
    .restart local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v9    # "$i$f$fastFirstOrNull":I
    :cond_10
    move-object/from16 v19, v2

    move/from16 v20, v9

    .line 1299
    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastFirstOrNull":I
    .end local v12    # "index$iv$iv":I
    .restart local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v20    # "$i$f$fastFirstOrNull":I
    nop

    .line 1300
    .end local v10    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v11    # "$i$f$fastForEach":I
    const/4 v9, 0x0

    .line 851
    .end local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v20    # "$i$f$fastFirstOrNull":I
    :goto_11
    check-cast v9, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v9, :cond_11

    move-object v2, v9

    .local v2, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v9, 0x0

    .line 852
    .local v9, "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicWidth$placeholderWidth$2":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v2, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 851
    .end local v2    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v9    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicWidth$placeholderWidth$2":I
    move v9, v2

    goto :goto_12

    .line 853
    :cond_11
    const/4 v9, 0x0

    .line 851
    :goto_12
    nop

    .line 855
    .local v9, "placeholderWidth":I
    nop

    .line 856
    nop

    .line 857
    nop

    .line 858
    nop

    .line 859
    nop

    .line 860
    nop

    .line 861
    nop

    .line 862
    iget v10, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->animationProgress:F

    .line 863
    invoke-static {}, Landroidx/compose/material3/TextFieldImplKt;->getZeroConstraints()J

    move-result-wide v11

    .line 864
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getDensity()F

    move-result v13

    .line 865
    iget-object v14, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 854
    invoke-static/range {v3 .. v14}, Landroidx/compose/material3/OutlinedTextFieldKt;->access$calculateWidth-DHJA7U0(IIIIIIIFJFLandroidx/compose/foundation/layout/PaddingValues;)I

    move-result v2

    return v2

    .line 1243
    .end local v7    # "textFieldWidth":I
    .end local v9    # "placeholderWidth":I
    .local v2, "$this$fastFirst$iv":Ljava/util/List;
    .local v3, "$i$f$fastFirst":I
    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v5, "$i$f$fastForEach":I
    .local v6, "index$iv$iv":I
    .local v8, "item$iv$iv":Ljava/lang/Object;
    :cond_12
    nop

    .line 1241
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1245
    .end local v6    # "index$iv$iv":I
    :cond_13
    nop

    .line 1246
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    new-instance v4, Ljava/util/NoSuchElementException;

    const-string v5, "Collection contains no element matching the predicate."

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v4
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

    .line 797
    sget-object v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$maxIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$maxIntrinsicHeight$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

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

    .line 815
    sget-object v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$maxIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$maxIntrinsicWidth$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->intrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

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

    .line 646
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    const/4 v0, 0x0

    .line 647
    .local v0, "occupiedSpaceHorizontally":I
    const/4 v1, 0x0

    .line 648
    .local v1, "occupiedSpaceVertically":I
    iget-object v2, v14, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v2}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v2

    invoke-interface {v15, v2}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v13

    .line 650
    .local v13, "bottomPadding":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xa

    const/4 v9, 0x0

    move-wide/from16 v2, p3

    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v10

    .line 655
    .local v10, "relaxedConstraints":J
    nop

    .line 653
    move-object/from16 v2, p2

    .local v2, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1157
    .local v3, "$i$f$fastFirstOrNull":I
    nop

    .line 1158
    move-object v4, v2

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1159
    .local v5, "$i$f$fastForEach":I
    nop

    .line 1160
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_1

    .line 1161
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1162
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v9

    .local v12, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 1158
    .local v16, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v17, v12

    check-cast v17, Landroidx/compose/ui/layout/Measurable;

    .local v17, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v18, 0x0

    .line 654
    .local v18, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$leadingPlaceable$1":I
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v19, v2

    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v19, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const-string/jumbo v2, "Leading"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1158
    .end local v17    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v18    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$leadingPlaceable$1":I
    if-eqz v2, :cond_0

    goto :goto_1

    .line 1162
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_0
    nop

    .line 1160
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v19

    goto :goto_0

    .end local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :cond_1
    move-object/from16 v19, v2

    .line 1164
    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v6    # "index$iv$iv":I
    .restart local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    nop

    .line 1165
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    const/4 v12, 0x0

    .line 653
    .end local v3    # "$i$f$fastFirstOrNull":I
    .end local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_1
    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .line 655
    if-eqz v12, :cond_2

    .line 653
    nop

    .line 655
    invoke-interface {v12, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    move-object v3, v2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 653
    :goto_2
    nop

    .line 656
    .local v3, "leadingPlaceable":Landroidx/compose/ui/layout/Placeable;
    invoke-static {v3}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    add-int/2addr v0, v2

    .line 657
    invoke-static {v3}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 661
    nop

    .line 660
    move-object/from16 v2, p2

    .restart local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1166
    .local v4, "$i$f$fastFirstOrNull":I
    nop

    .line 1167
    move-object v5, v2

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1168
    .local v6, "$i$f$fastForEach":I
    nop

    .line 1169
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_3
    if-ge v7, v8, :cond_4

    .line 1170
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1171
    .restart local v9    # "item$iv$iv":Ljava/lang/Object;
    move-object v12, v9

    .restart local v12    # "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 1167
    .restart local v16    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v17, v12

    check-cast v17, Landroidx/compose/ui/layout/Measurable;

    .restart local v17    # "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v18, 0x0

    .line 660
    .local v18, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$trailingPlaceable$1":I
    move-object/from16 v19, v2

    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v2

    move/from16 v20, v4

    .end local v4    # "$i$f$fastFirstOrNull":I
    .local v20, "$i$f$fastFirstOrNull":I
    const-string/jumbo v4, "Trailing"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1167
    .end local v17    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v18    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$trailingPlaceable$1":I
    if-eqz v2, :cond_3

    goto :goto_4

    .line 1171
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_3
    nop

    .line 1169
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v19

    move/from16 v4, v20

    goto :goto_3

    .end local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v20    # "$i$f$fastFirstOrNull":I
    .restart local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v4    # "$i$f$fastFirstOrNull":I
    :cond_4
    move-object/from16 v19, v2

    move/from16 v20, v4

    .line 1173
    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastFirstOrNull":I
    .end local v7    # "index$iv$iv":I
    .restart local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v20    # "$i$f$fastFirstOrNull":I
    nop

    .line 1174
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    const/4 v12, 0x0

    .line 660
    .end local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v20    # "$i$f$fastFirstOrNull":I
    :goto_4
    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .line 661
    if-eqz v12, :cond_5

    .line 660
    nop

    .line 661
    neg-int v2, v0

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    move-wide/from16 v16, v10

    move/from16 v18, v2

    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v4

    invoke-interface {v12, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    move-object v4, v2

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    .line 660
    :goto_5
    nop

    .line 662
    .local v4, "trailingPlaceable":Landroidx/compose/ui/layout/Placeable;
    invoke-static {v4}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    add-int/2addr v0, v2

    .line 663
    invoke-static {v4}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 667
    nop

    .line 666
    move-object/from16 v2, p2

    .restart local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1175
    .local v5, "$i$f$fastFirstOrNull":I
    nop

    .line 1176
    move-object v6, v2

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1177
    .local v7, "$i$f$fastForEach":I
    nop

    .line 1178
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    :goto_6
    if-ge v8, v9, :cond_7

    .line 1179
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 1180
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v12

    .local v16, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 1176
    .local v17, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v18, v16

    check-cast v18, Landroidx/compose/ui/layout/Measurable;

    .local v18, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v19, 0x0

    .line 666
    .local v19, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$prefixPlaceable$1":I
    move-object/from16 v20, v2

    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v20, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v2

    move/from16 v21, v5

    .end local v5    # "$i$f$fastFirstOrNull":I
    .local v21, "$i$f$fastFirstOrNull":I
    const-string/jumbo v5, "Prefix"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1176
    .end local v18    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v19    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$prefixPlaceable$1":I
    if-eqz v2, :cond_6

    goto :goto_7

    .line 1180
    .end local v16    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_6
    nop

    .line 1178
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v20

    move/from16 v5, v21

    goto :goto_6

    .end local v20    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v21    # "$i$f$fastFirstOrNull":I
    .restart local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v5    # "$i$f$fastFirstOrNull":I
    :cond_7
    move-object/from16 v20, v2

    move/from16 v21, v5

    .line 1182
    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastFirstOrNull":I
    .end local v8    # "index$iv$iv":I
    .restart local v20    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v21    # "$i$f$fastFirstOrNull":I
    nop

    .line 1183
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/16 v16, 0x0

    .line 666
    .end local v20    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v21    # "$i$f$fastFirstOrNull":I
    :goto_7
    move-object/from16 v2, v16

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 667
    if-eqz v2, :cond_8

    .line 666
    nop

    .line 667
    neg-int v5, v0

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    move-wide/from16 v16, v10

    move/from16 v18, v5

    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v5

    invoke-interface {v2, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    move-object v5, v2

    goto :goto_8

    :cond_8
    const/4 v5, 0x0

    .line 666
    :goto_8
    nop

    .line 668
    .local v5, "prefixPlaceable":Landroidx/compose/ui/layout/Placeable;
    invoke-static {v5}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    add-int/2addr v0, v2

    .line 669
    invoke-static {v5}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 673
    nop

    .line 672
    move-object/from16 v2, p2

    .restart local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1184
    .local v6, "$i$f$fastFirstOrNull":I
    nop

    .line 1185
    move-object v7, v2

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 1186
    .local v8, "$i$f$fastForEach":I
    nop

    .line 1187
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    :goto_9
    if-ge v9, v12, :cond_a

    .line 1188
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 1189
    .local v16, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    .local v17, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 1185
    .local v18, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v19, v17

    check-cast v19, Landroidx/compose/ui/layout/Measurable;

    .local v19, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v20, 0x0

    .line 672
    .local v20, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$suffixPlaceable$1":I
    move-object/from16 v21, v2

    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v21, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static/range {v19 .. v19}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v2

    move/from16 v23, v6

    .end local v6    # "$i$f$fastFirstOrNull":I
    .local v23, "$i$f$fastFirstOrNull":I
    const-string/jumbo v6, "Suffix"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1185
    .end local v19    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v20    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$suffixPlaceable$1":I
    if-eqz v2, :cond_9

    goto :goto_a

    .line 1189
    .end local v17    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_9
    nop

    .line 1187
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v21

    move/from16 v6, v23

    goto :goto_9

    .end local v21    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v23    # "$i$f$fastFirstOrNull":I
    .restart local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v6    # "$i$f$fastFirstOrNull":I
    :cond_a
    move-object/from16 v21, v2

    move/from16 v23, v6

    .line 1191
    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastFirstOrNull":I
    .end local v9    # "index$iv$iv":I
    .restart local v21    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v23    # "$i$f$fastFirstOrNull":I
    nop

    .line 1192
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    const/16 v17, 0x0

    .line 672
    .end local v21    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v23    # "$i$f$fastFirstOrNull":I
    :goto_a
    move-object/from16 v2, v17

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 673
    if-eqz v2, :cond_b

    .line 672
    nop

    .line 673
    neg-int v6, v0

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    move-wide/from16 v16, v10

    move/from16 v18, v6

    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v6

    invoke-interface {v2, v6, v7}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    move-object v6, v2

    goto :goto_b

    :cond_b
    const/4 v6, 0x0

    .line 672
    :goto_b
    nop

    .line 674
    .local v6, "suffixPlaceable":Landroidx/compose/ui/layout/Placeable;
    invoke-static {v6}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    add-int v12, v0, v2

    .line 675
    .end local v0    # "occupiedSpaceHorizontally":I
    .local v12, "occupiedSpaceHorizontally":I
    invoke-static {v6}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 679
    .end local v1    # "occupiedSpaceVertically":I
    .local v0, "occupiedSpaceVertically":I
    iget-object v1, v14, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v1

    invoke-interface {v15, v1}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v1

    .line 680
    iget-object v2, v14, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v7

    invoke-interface {v2, v7}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v2

    invoke-interface {v15, v2}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    .line 679
    add-int/2addr v1, v2

    .line 678
    move v8, v1

    .line 681
    .local v8, "labelHorizontalPaddingOffset":I
    nop

    .line 683
    neg-int v1, v12

    sub-int/2addr v1, v8

    .line 684
    neg-int v2, v8

    .line 685
    iget v7, v14, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->animationProgress:F

    .line 682
    invoke-static {v1, v2, v7}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v1

    .line 687
    neg-int v2, v13

    .line 681
    invoke-static {v10, v11, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v1

    .line 690
    .local v1, "labelConstraints":J
    move-object/from16 v7, p2

    .local v7, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 1193
    .local v9, "$i$f$fastFirstOrNull":I
    nop

    .line 1194
    move-object/from16 v16, v7

    .local v16, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v17, 0x0

    .line 1195
    .local v17, "$i$f$fastForEach":I
    nop

    .line 1196
    const/16 v18, 0x0

    move-object/from16 v19, v7

    .end local v7    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v18, "index$iv$iv":I
    .local v19, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v7

    move/from16 v23, v8

    move/from16 v8, v18

    .end local v18    # "index$iv$iv":I
    .local v8, "index$iv$iv":I
    .local v23, "labelHorizontalPaddingOffset":I
    :goto_c
    if-ge v8, v7, :cond_d

    .line 1197
    move/from16 v18, v7

    move-object/from16 v7, v16

    .end local v16    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 1198
    .local v16, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v20, v16

    .local v20, "it$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 1194
    .local v21, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v24, v20

    check-cast v24, Landroidx/compose/ui/layout/Measurable;

    .local v24, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v25, 0x0

    .line 690
    .local v25, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$labelPlaceable$1":I
    move-object/from16 v26, v7

    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v26, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-static/range {v24 .. v24}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v7

    move/from16 v27, v9

    .end local v9    # "$i$f$fastFirstOrNull":I
    .local v27, "$i$f$fastFirstOrNull":I
    const-string v9, "Label"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 1194
    .end local v24    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v25    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$labelPlaceable$1":I
    if-eqz v7, :cond_c

    goto :goto_d

    .line 1198
    .end local v20    # "it$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_c
    nop

    .line 1196
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v18

    move-object/from16 v16, v26

    move/from16 v9, v27

    goto :goto_c

    .end local v26    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v27    # "$i$f$fastFirstOrNull":I
    .restart local v9    # "$i$f$fastFirstOrNull":I
    .local v16, "$this$fastForEach$iv$iv":Ljava/util/List;
    :cond_d
    move/from16 v27, v9

    move-object/from16 v26, v16

    .line 1200
    .end local v8    # "index$iv$iv":I
    .end local v9    # "$i$f$fastFirstOrNull":I
    .end local v16    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v26    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v27    # "$i$f$fastFirstOrNull":I
    nop

    .line 1201
    .end local v17    # "$i$f$fastForEach":I
    .end local v26    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v20, 0x0

    .line 690
    .end local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v27    # "$i$f$fastFirstOrNull":I
    :goto_d
    move-object/from16 v7, v20

    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    if-eqz v7, :cond_e

    invoke-interface {v7, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v7

    goto :goto_e

    :cond_e
    const/4 v7, 0x0

    .line 689
    :goto_e
    move-object/from16 v24, v7

    .line 691
    .local v24, "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    if-eqz v24, :cond_f

    move-object/from16 v7, v24

    .local v7, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v8, 0x0

    .line 692
    .local v8, "$i$a$-let-OutlinedTextFieldMeasurePolicy$measure$1":I
    iget-object v9, v14, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->onLabelMeasured:Lkotlin/jvm/functions/Function1;

    move-wide/from16 v25, v1

    .end local v1    # "labelConstraints":J
    .local v25, "labelConstraints":J
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v1

    invoke-interface {v9, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    nop

    .end local v7    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v8    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$measure$1":I
    goto :goto_f

    .line 691
    .end local v25    # "labelConstraints":J
    .restart local v1    # "labelConstraints":J
    :cond_f
    move-wide/from16 v25, v1

    .end local v1    # "labelConstraints":J
    .restart local v25    # "labelConstraints":J
    :goto_f
    nop

    .line 697
    move-object/from16 v1, p2

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1202
    .local v2, "$i$f$fastFirstOrNull":I
    nop

    .line 1203
    move-object v7, v1

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 1204
    .local v8, "$i$f$fastForEach":I
    nop

    .line 1205
    const/4 v9, 0x0

    move-object/from16 v16, v1

    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v9, "index$iv$iv":I
    .local v16, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    :goto_10
    if-ge v9, v1, :cond_11

    .line 1206
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 1207
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v17

    .local v18, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 1203
    .local v19, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v20, v18

    check-cast v20, Landroidx/compose/ui/layout/Measurable;

    .local v20, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v21, 0x0

    .line 697
    .local v21, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$supportingMeasurable$1":I
    move/from16 v27, v1

    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v1

    move/from16 v28, v2

    .end local v2    # "$i$f$fastFirstOrNull":I
    .local v28, "$i$f$fastFirstOrNull":I
    const-string/jumbo v2, "Supporting"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1203
    .end local v20    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v21    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$supportingMeasurable$1":I
    if-eqz v1, :cond_10

    goto :goto_11

    .line 1207
    .end local v18    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_10
    nop

    .line 1205
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v27

    move/from16 v2, v28

    goto :goto_10

    .end local v28    # "$i$f$fastFirstOrNull":I
    .restart local v2    # "$i$f$fastFirstOrNull":I
    :cond_11
    move/from16 v28, v2

    .line 1209
    .end local v2    # "$i$f$fastFirstOrNull":I
    .end local v9    # "index$iv$iv":I
    .restart local v28    # "$i$f$fastFirstOrNull":I
    nop

    .line 1210
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    const/16 v18, 0x0

    .line 697
    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v28    # "$i$f$fastFirstOrNull":I
    :goto_11
    move-object/from16 v8, v18

    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    .line 699
    .local v8, "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    if-eqz v8, :cond_12

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    invoke-interface {v8, v2}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    move-result v2

    goto :goto_12

    :cond_12
    const/4 v2, 0x0

    .line 698
    :goto_12
    move/from16 v27, v2

    .line 702
    .local v27, "supportingIntrinsicHeight":I
    nop

    .line 703
    invoke-static/range {v24 .. v24}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 704
    iget-object v7, v14, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v7}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v7

    invoke-interface {v15, v7}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 702
    move/from16 v28, v2

    .line 706
    .local v28, "topPadding":I
    nop

    .line 707
    neg-int v2, v12

    .line 708
    neg-int v7, v13

    sub-int v7, v7, v28

    sub-int v7, v7, v27

    .line 706
    move-wide/from16 v41, v10

    move-wide/from16 v10, p3

    .end local v10    # "relaxedConstraints":J
    .local v41, "relaxedConstraints":J
    invoke-static {v10, v11, v2, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v29

    .line 709
    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0xb

    const/16 v36, 0x0

    invoke-static/range {v29 .. v36}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v16

    .line 706
    move-wide/from16 v43, v16

    .line 711
    .local v43, "textConstraints":J
    move-object/from16 v2, p2

    .local v2, "$this$fastFirst$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1211
    .local v7, "$i$f$fastFirst":I
    nop

    .line 1212
    move-object v9, v2

    .local v9, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 1213
    .local v16, "$i$f$fastForEach":I
    nop

    .line 1214
    const/16 v17, 0x0

    .local v17, "index$iv$iv":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v18, v2

    move/from16 v2, v17

    .end local v17    # "index$iv$iv":I
    .local v2, "index$iv$iv":I
    .local v18, "$this$fastFirst$iv":Ljava/util/List;
    :goto_13
    const-string v10, "Collection contains no element matching the predicate."

    if-ge v2, v1, :cond_1c

    .line 1215
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1216
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v11

    .local v17, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 1212
    .local v19, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object/from16 v20, v17

    check-cast v20, Landroidx/compose/ui/layout/Measurable;

    .restart local v20    # "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v21, 0x0

    .line 711
    .local v21, "$i$a$-fastFirst-OutlinedTextFieldMeasurePolicy$measure$textFieldPlaceable$1":I
    move/from16 v29, v1

    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v1

    move/from16 v30, v7

    .end local v7    # "$i$f$fastFirst":I
    .local v30, "$i$f$fastFirst":I
    const-string/jumbo v7, "TextField"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1212
    .end local v20    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v21    # "$i$a$-fastFirst-OutlinedTextFieldMeasurePolicy$measure$textFieldPlaceable$1":I
    if-eqz v1, :cond_1b

    .line 1219
    .end local v2    # "index$iv$iv":I
    .end local v9    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$fastForEach":I
    .end local v17    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v19    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v30    # "$i$f$fastFirst":I
    move-object/from16 v1, v17

    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 711
    move-object/from16 v45, v10

    move-wide/from16 v10, v43

    .end local v43    # "textConstraints":J
    .local v10, "textConstraints":J
    invoke-interface {v1, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v7

    .line 710
    nop

    .line 714
    .local v7, "textFieldPlaceable":Landroidx/compose/ui/layout/Placeable;
    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0xe

    const/16 v36, 0x0

    move-wide/from16 v29, v10

    invoke-static/range {v29 .. v36}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v1

    .line 716
    .local v1, "placeholderConstraints":J
    nop

    .line 715
    move-object/from16 v9, p2

    .local v9, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 1220
    .local v16, "$i$f$fastFirstOrNull":I
    nop

    .line 1221
    move-object/from16 v17, v9

    .local v17, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v18, 0x0

    .line 1222
    .local v18, "$i$f$fastForEach":I
    nop

    .line 1223
    const/16 v19, 0x0

    move-object/from16 v20, v9

    .end local v9    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v19, "index$iv$iv":I
    .local v20, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v9

    move/from16 v10, v19

    .end local v19    # "index$iv$iv":I
    .local v10, "index$iv$iv":I
    .restart local v43    # "textConstraints":J
    :goto_14
    if-ge v10, v9, :cond_14

    .line 1224
    move-object/from16 v11, v17

    .end local v17    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v11, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 1225
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v17

    .local v19, "it$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 1221
    .local v21, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v29, v19

    check-cast v29, Landroidx/compose/ui/layout/Measurable;

    .local v29, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v30, 0x0

    .line 715
    .local v30, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$placeholderPlaceable$1":I
    move/from16 v31, v9

    invoke-static/range {v29 .. v29}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v32, v11

    .end local v11    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v32, "$this$fastForEach$iv$iv":Ljava/util/List;
    const-string v11, "Hint"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 1221
    .end local v29    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v30    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$placeholderPlaceable$1":I
    if-eqz v9, :cond_13

    goto :goto_15

    .line 1225
    .end local v19    # "it$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_13
    nop

    .line 1223
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v31

    move-object/from16 v17, v32

    goto :goto_14

    .end local v32    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v17, "$this$fastForEach$iv$iv":Ljava/util/List;
    :cond_14
    move-object/from16 v32, v17

    .line 1227
    .end local v10    # "index$iv$iv":I
    .end local v17    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v32    # "$this$fastForEach$iv$iv":Ljava/util/List;
    nop

    .line 1228
    .end local v18    # "$i$f$fastForEach":I
    .end local v32    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v19, 0x0

    .line 715
    .end local v16    # "$i$f$fastFirstOrNull":I
    .end local v20    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_15
    move-object/from16 v9, v19

    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 716
    if-eqz v9, :cond_15

    .line 715
    nop

    .line 716
    invoke-interface {v9, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v9

    goto :goto_16

    :cond_15
    const/4 v9, 0x0

    .line 715
    :goto_16
    nop

    .line 718
    .local v9, "placeholderPlaceable":Landroidx/compose/ui/layout/Placeable;
    nop

    .line 720
    invoke-static {v7}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v10

    invoke-static {v9}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 721
    nop

    .line 720
    add-int v10, v10, v28

    .line 721
    nop

    .line 720
    add-int/2addr v10, v13

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 718
    nop

    .line 726
    .end local v0    # "occupiedSpaceVertically":I
    .local v10, "occupiedSpaceVertically":I
    invoke-static {v3}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v29

    .line 727
    invoke-static {v4}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v30

    .line 728
    invoke-static {v5}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v31

    .line 729
    invoke-static {v6}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v32

    .line 730
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v33

    .line 731
    invoke-static/range {v24 .. v24}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v34

    .line 732
    invoke-static {v9}, Landroidx/compose/material3/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v35

    .line 733
    iget v0, v14, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->animationProgress:F

    .line 734
    nop

    .line 735
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->getDensity()F

    move-result v39

    .line 736
    iget-object v11, v14, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 725
    move/from16 v36, v0

    move-wide/from16 v37, p3

    move-object/from16 v40, v11

    invoke-static/range {v29 .. v40}, Landroidx/compose/material3/OutlinedTextFieldKt;->access$calculateWidth-DHJA7U0(IIIIIIIFJFLandroidx/compose/foundation/layout/PaddingValues;)I

    move-result v0

    .line 724
    nop

    .line 740
    .local v0, "width":I
    const/16 v18, 0x0

    .line 741
    neg-int v11, v10

    .line 740
    const/16 v20, 0x1

    const/16 v21, 0x0

    move-wide/from16 v16, v41

    move/from16 v19, v11

    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v29

    .line 742
    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x9

    const/16 v36, 0x0

    move/from16 v32, v0

    invoke-static/range {v29 .. v36}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v16

    .line 740
    move-wide/from16 v46, v16

    .line 743
    .local v46, "supportingConstraints":J
    if-eqz v8, :cond_16

    move/from16 v21, v12

    move/from16 v20, v13

    move-wide/from16 v12, v46

    .end local v13    # "bottomPadding":I
    .end local v46    # "supportingConstraints":J
    .local v12, "supportingConstraints":J
    .local v20, "bottomPadding":I
    .local v21, "occupiedSpaceHorizontally":I
    invoke-interface {v8, v12, v13}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v11

    goto :goto_17

    .end local v20    # "bottomPadding":I
    .end local v21    # "occupiedSpaceHorizontally":I
    .local v12, "occupiedSpaceHorizontally":I
    .restart local v13    # "bottomPadding":I
    .restart local v46    # "supportingConstraints":J
    :cond_16
    move/from16 v21, v12

    move/from16 v20, v13

    move-wide/from16 v12, v46

    .end local v13    # "bottomPadding":I
    .end local v46    # "supportingConstraints":J
    .local v12, "supportingConstraints":J
    .restart local v20    # "bottomPadding":I
    .restart local v21    # "occupiedSpaceHorizontally":I
    const/4 v11, 0x0

    :goto_17
    move-wide/from16 v46, v43

    move-wide/from16 v42, v41

    .line 744
    .end local v41    # "relaxedConstraints":J
    .end local v43    # "textConstraints":J
    .local v11, "supportingPlaceable":Landroidx/compose/ui/layout/Placeable;
    .local v42, "relaxedConstraints":J
    .local v46, "textConstraints":J
    invoke-static {v11}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v22

    .line 748
    .local v22, "supportingHeight":I
    invoke-static {v3}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v29

    .line 749
    invoke-static {v4}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v30

    .line 750
    invoke-static {v5}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v31

    .line 751
    invoke-static {v6}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v32

    .line 752
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v33

    .line 753
    invoke-static/range {v24 .. v24}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v34

    .line 754
    invoke-static {v9}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v35

    .line 755
    invoke-static {v11}, Landroidx/compose/material3/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v36

    .line 756
    move-wide/from16 v16, v1

    .end local v1    # "placeholderConstraints":J
    .local v16, "placeholderConstraints":J
    iget v1, v14, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->animationProgress:F

    .line 757
    nop

    .line 758
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->getDensity()F

    move-result v40

    .line 759
    iget-object v2, v14, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 747
    move/from16 v37, v1

    move-wide/from16 v38, p3

    move-object/from16 v41, v2

    invoke-static/range {v29 .. v41}, Landroidx/compose/material3/OutlinedTextFieldKt;->access$calculateHeight-mKXJcVc(IIIIIIIIFJFLandroidx/compose/foundation/layout/PaddingValues;)I

    move-result v1

    .line 746
    move/from16 v29, v1

    .line 761
    .local v29, "totalHeight":I
    sub-int v2, v29, v22

    .line 763
    .local v2, "height":I
    move-object/from16 v1, p2

    .local v1, "$this$fastFirst$iv":Ljava/util/List;
    const/16 v18, 0x0

    .line 1229
    .local v18, "$i$f$fastFirst":I
    nop

    .line 1230
    move-object/from16 v19, v1

    .local v19, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v30, 0x0

    .line 1231
    .local v30, "$i$f$fastForEach":I
    nop

    .line 1232
    const/16 v31, 0x0

    move-object/from16 v32, v1

    .end local v1    # "$this$fastFirst$iv":Ljava/util/List;
    .local v31, "index$iv$iv":I
    .local v32, "$this$fastFirst$iv":Ljava/util/List;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v33, v8

    move/from16 v8, v31

    .end local v31    # "index$iv$iv":I
    .local v8, "index$iv$iv":I
    .local v33, "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    :goto_18
    if-ge v8, v1, :cond_1a

    .line 1233
    move/from16 v31, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v1, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .line 1234
    .local v19, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v34, v19

    .local v34, "it$iv":Ljava/lang/Object;
    const/16 v35, 0x0

    .line 1230
    .local v35, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object/from16 v36, v34

    check-cast v36, Landroidx/compose/ui/layout/Measurable;

    .local v36, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v37, 0x0

    .line 763
    .local v37, "$i$a$-fastFirst-OutlinedTextFieldMeasurePolicy$measure$containerPlaceable$1":I
    move-object/from16 v38, v1

    .end local v1    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v38, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-static/range {v36 .. v36}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v1

    move/from16 v39, v10

    .end local v10    # "occupiedSpaceVertically":I
    .local v39, "occupiedSpaceVertically":I
    const-string v10, "Container"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1230
    .end local v36    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v37    # "$i$a$-fastFirst-OutlinedTextFieldMeasurePolicy$measure$containerPlaceable$1":I
    if-eqz v1, :cond_19

    .line 1237
    .end local v8    # "index$iv$iv":I
    .end local v18    # "$i$f$fastFirst":I
    .end local v19    # "item$iv$iv":Ljava/lang/Object;
    .end local v30    # "$i$f$fastForEach":I
    .end local v32    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v34    # "it$iv":Ljava/lang/Object;
    .end local v35    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v38    # "$this$fastForEach$iv$iv":Ljava/util/List;
    move-object/from16 v1, v34

    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 765
    const v8, 0x7fffffff

    if-eq v0, v8, :cond_17

    move v10, v0

    goto :goto_19

    :cond_17
    const/4 v10, 0x0

    .line 766
    :goto_19
    nop

    .line 767
    if-eq v2, v8, :cond_18

    move v8, v2

    goto :goto_1a

    :cond_18
    const/4 v8, 0x0

    .line 768
    :goto_1a
    nop

    .line 764
    move-wide/from16 v36, v12

    .end local v12    # "supportingConstraints":J
    .local v36, "supportingConstraints":J
    invoke-static {v10, v0, v8, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v12

    .line 763
    invoke-interface {v1, v12, v13}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v30

    .line 771
    .local v30, "containerPlaceable":Landroidx/compose/ui/layout/Placeable;
    const/16 v18, 0x0

    new-instance v19, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;

    move/from16 v40, v0

    .end local v0    # "width":I
    .local v40, "width":I
    move-object/from16 v0, v19

    move-wide/from16 v48, v16

    .end local v16    # "placeholderConstraints":J
    .local v48, "placeholderConstraints":J
    move/from16 v1, v29

    move/from16 v41, v2

    .end local v2    # "height":I
    .local v41, "height":I
    move/from16 v2, v40

    move-object/from16 v8, v24

    move-object/from16 v10, v30

    move-wide/from16 v50, v36

    move/from16 v36, v21

    .end local v21    # "occupiedSpaceHorizontally":I
    .local v36, "occupiedSpaceHorizontally":I
    .local v50, "supportingConstraints":J
    move-object/from16 v12, p0

    move/from16 v37, v20

    .end local v20    # "bottomPadding":I
    .local v37, "bottomPadding":I
    move-object/from16 v13, p1

    invoke-direct/range {v0 .. v13}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$2;-><init>(IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;Landroidx/compose/ui/layout/MeasureScope;)V

    check-cast v19, Lkotlin/jvm/functions/Function1;

    const/16 v20, 0x4

    const/16 v21, 0x0

    move-object/from16 v15, p1

    move/from16 v16, v40

    move/from16 v17, v29

    invoke-static/range {v15 .. v21}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    .line 1230
    .end local v36    # "occupiedSpaceHorizontally":I
    .end local v37    # "bottomPadding":I
    .end local v40    # "width":I
    .end local v41    # "height":I
    .end local v48    # "placeholderConstraints":J
    .end local v50    # "supportingConstraints":J
    .restart local v0    # "width":I
    .restart local v2    # "height":I
    .restart local v8    # "index$iv$iv":I
    .restart local v12    # "supportingConstraints":J
    .restart local v16    # "placeholderConstraints":J
    .restart local v18    # "$i$f$fastFirst":I
    .restart local v19    # "item$iv$iv":Ljava/lang/Object;
    .restart local v20    # "bottomPadding":I
    .restart local v21    # "occupiedSpaceHorizontally":I
    .local v30, "$i$f$fastForEach":I
    .restart local v32    # "$this$fastFirst$iv":Ljava/util/List;
    .restart local v34    # "it$iv":Ljava/lang/Object;
    .restart local v35    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .restart local v38    # "$this$fastForEach$iv$iv":Ljava/util/List;
    :cond_19
    move/from16 v40, v0

    move/from16 v41, v2

    move-wide/from16 v50, v12

    move-wide/from16 v48, v16

    move/from16 v37, v20

    move/from16 v36, v21

    .line 1234
    .end local v0    # "width":I
    .end local v2    # "height":I
    .end local v12    # "supportingConstraints":J
    .end local v16    # "placeholderConstraints":J
    .end local v20    # "bottomPadding":I
    .end local v21    # "occupiedSpaceHorizontally":I
    .end local v34    # "it$iv":Ljava/lang/Object;
    .end local v35    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .restart local v36    # "occupiedSpaceHorizontally":I
    .restart local v37    # "bottomPadding":I
    .restart local v40    # "width":I
    .restart local v41    # "height":I
    .restart local v48    # "placeholderConstraints":J
    .restart local v50    # "supportingConstraints":J
    nop

    .line 1232
    .end local v19    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v15, p1

    move/from16 v1, v31

    move-object/from16 v19, v38

    move/from16 v10, v39

    goto/16 :goto_18

    .end local v36    # "occupiedSpaceHorizontally":I
    .end local v37    # "bottomPadding":I
    .end local v38    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v39    # "occupiedSpaceVertically":I
    .end local v40    # "width":I
    .end local v41    # "height":I
    .end local v48    # "placeholderConstraints":J
    .end local v50    # "supportingConstraints":J
    .restart local v0    # "width":I
    .restart local v2    # "height":I
    .restart local v10    # "occupiedSpaceVertically":I
    .restart local v12    # "supportingConstraints":J
    .restart local v16    # "placeholderConstraints":J
    .local v19, "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v20    # "bottomPadding":I
    .restart local v21    # "occupiedSpaceHorizontally":I
    :cond_1a
    move/from16 v40, v0

    .line 1236
    .end local v0    # "width":I
    .end local v8    # "index$iv$iv":I
    .restart local v40    # "width":I
    nop

    .line 1237
    .end local v19    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v30    # "$i$f$fastForEach":I
    new-instance v0, Ljava/util/NoSuchElementException;

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1212
    .end local v7    # "textFieldPlaceable":Landroidx/compose/ui/layout/Placeable;
    .end local v10    # "occupiedSpaceVertically":I
    .end local v20    # "bottomPadding":I
    .end local v21    # "occupiedSpaceHorizontally":I
    .end local v22    # "supportingHeight":I
    .end local v29    # "totalHeight":I
    .end local v32    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v33    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .end local v40    # "width":I
    .end local v42    # "relaxedConstraints":J
    .end local v46    # "textConstraints":J
    .local v0, "occupiedSpaceVertically":I
    .local v2, "index$iv$iv":I
    .local v8, "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .local v9, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v11, "item$iv$iv":Ljava/lang/Object;
    .local v12, "occupiedSpaceHorizontally":I
    .restart local v13    # "bottomPadding":I
    .local v16, "$i$f$fastForEach":I
    .local v17, "it$iv":Ljava/lang/Object;
    .local v18, "$this$fastFirst$iv":Ljava/util/List;
    .local v19, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .local v30, "$i$f$fastFirst":I
    .local v41, "relaxedConstraints":J
    .restart local v43    # "textConstraints":J
    :cond_1b
    move-object/from16 v33, v8

    move/from16 v36, v12

    move/from16 v37, v13

    move-wide/from16 v46, v43

    move-wide/from16 v42, v41

    .line 1216
    .end local v8    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .end local v12    # "occupiedSpaceHorizontally":I
    .end local v13    # "bottomPadding":I
    .end local v17    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v41    # "relaxedConstraints":J
    .end local v43    # "textConstraints":J
    .restart local v33    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .restart local v36    # "occupiedSpaceHorizontally":I
    .restart local v37    # "bottomPadding":I
    .restart local v42    # "relaxedConstraints":J
    .restart local v46    # "textConstraints":J
    nop

    .line 1214
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v15, p1

    move-wide/from16 v10, p3

    move/from16 v1, v29

    move/from16 v7, v30

    move-wide/from16 v41, v42

    move-wide/from16 v43, v46

    goto/16 :goto_13

    .end local v30    # "$i$f$fastFirst":I
    .end local v33    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .end local v36    # "occupiedSpaceHorizontally":I
    .end local v37    # "bottomPadding":I
    .end local v42    # "relaxedConstraints":J
    .end local v46    # "textConstraints":J
    .local v7, "$i$f$fastFirst":I
    .restart local v8    # "supportingMeasurable":Landroidx/compose/ui/layout/Measurable;
    .restart local v12    # "occupiedSpaceHorizontally":I
    .restart local v13    # "bottomPadding":I
    .restart local v41    # "relaxedConstraints":J
    .restart local v43    # "textConstraints":J
    :cond_1c
    move-object v1, v10

    .line 1218
    .end local v2    # "index$iv$iv":I
    nop

    .line 1219
    .end local v9    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v16    # "$i$f$fastForEach":I
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2
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

    .line 806
    sget-object v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$minIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$minIntrinsicHeight$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

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

    .line 824
    sget-object v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->intrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result v0

    return v0
.end method
