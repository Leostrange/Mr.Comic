.class final Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;
.super Ljava/lang/Object;
.source "OutlinedTextField.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutlinedTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutlinedTextField.kt\nandroidx/compose/material/OutlinedTextFieldMeasurePolicy\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,984:1\n116#2,2:985\n33#2,6:987\n118#2:993\n116#2,2:994\n33#2,6:996\n118#2:1002\n116#2,2:1003\n33#2,6:1005\n118#2:1011\n544#2,2:1012\n33#2,6:1014\n546#2:1020\n116#2,2:1021\n33#2,6:1023\n118#2:1029\n544#2,2:1030\n33#2,6:1032\n546#2:1038\n544#2,2:1039\n33#2,6:1041\n546#2:1047\n116#2,2:1048\n33#2,6:1050\n118#2:1056\n116#2,2:1057\n33#2,6:1059\n118#2:1065\n116#2,2:1066\n33#2,6:1068\n118#2:1074\n116#2,2:1075\n33#2,6:1077\n118#2:1083\n116#2,2:1084\n33#2,6:1086\n118#2:1092\n116#2,2:1093\n33#2,6:1095\n118#2:1101\n116#2,2:1102\n33#2,6:1104\n118#2:1110\n544#2,2:1111\n33#2,6:1113\n546#2:1119\n116#2,2:1120\n33#2,6:1122\n118#2:1128\n*S KotlinDebug\n*F\n+ 1 OutlinedTextField.kt\nandroidx/compose/material/OutlinedTextFieldMeasurePolicy\n*L\n581#1:985,2\n581#1:987,6\n581#1:993\n589#1:994,2\n589#1:996,6\n589#1:1002\n608#1:1003,2\n608#1:1005,6\n608#1:1011\n625#1:1012,2\n625#1:1014,6\n625#1:1020\n629#1:1021,2\n629#1:1023,6\n629#1:1029\n657#1:1030,2\n657#1:1032,6\n657#1:1038\n726#1:1039,2\n726#1:1041,6\n726#1:1047\n727#1:1048,2\n727#1:1050,6\n727#1:1056\n730#1:1057,2\n730#1:1059,6\n730#1:1065\n733#1:1066,2\n733#1:1068,6\n733#1:1074\n736#1:1075,2\n736#1:1077,6\n736#1:1083\n758#1:1084,2\n758#1:1086,6\n758#1:1092\n762#1:1093,2\n762#1:1095,6\n762#1:1101\n767#1:1102,2\n767#1:1104,6\n767#1:1110\n772#1:1111,2\n772#1:1113,6\n772#1:1119\n773#1:1120,2\n773#1:1122,6\n773#1:1128\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B1\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ<\u0010\r\u001a\u00020\u000e*\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u000e2\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u0015H\u0002J<\u0010\u0016\u001a\u00020\u000e*\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0017\u001a\u00020\u000e2\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u0015H\u0002J\"\u0010\u0018\u001a\u00020\u000e*\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u000eH\u0016J\"\u0010\u0019\u001a\u00020\u000e*\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0017\u001a\u00020\u000eH\u0016J,\u0010\u001a\u001a\u00020\u001b*\u00020\u001c2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00112\u0006\u0010\u001e\u001a\u00020\u001fH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010!J\"\u0010\"\u001a\u00020\u000e*\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u000eH\u0016J\"\u0010#\u001a\u00020\u000e*\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0017\u001a\u00020\u000eH\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;",
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
        "material_release"
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

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput-object p1, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->onLabelMeasured:Lkotlin/jvm/functions/Function1;

    .line 567
    iput-boolean p2, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->singleLine:Z

    .line 568
    iput p3, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->animationProgress:F

    .line 569
    iput-object p4, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 565
    return-void
.end method

.method public static final synthetic access$getAnimationProgress$p(Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;)F
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;

    .line 565
    iget v0, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->animationProgress:F

    return v0
.end method

.method public static final synthetic access$getPaddingValues$p(Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;

    .line 565
    iget-object v0, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
.end method

.method public static final synthetic access$getSingleLine$p(Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;

    .line 565
    iget-boolean v0, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->singleLine:Z

    return v0
.end method

.method private final intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 21
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

    .line 757
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const/4 v2, 0x0

    .local v2, "remainingWidth":I
    move/from16 v2, p3

    .line 758
    move-object/from16 v3, p2

    .local v3, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1084
    .local v4, "$i$f$fastFirstOrNull":I
    nop

    .line 1085
    move-object v5, v3

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1086
    .local v6, "$i$f$fastForEach":I
    nop

    .line 1087
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_1

    .line 1088
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1089
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1085
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v13, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v14, 0x0

    .line 758
    .local v14, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$leadingHeight$1":I
    invoke-static {v13}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    const-string/jumbo v9, "Leading"

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 1085
    .end local v13    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v14    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$leadingHeight$1":I
    if-eqz v9, :cond_0

    goto :goto_1

    .line 1089
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_0
    nop

    .line 1087
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1091
    .end local v7    # "index$iv$iv":I
    :cond_1
    nop

    .line 1092
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    const/4 v11, 0x0

    .line 758
    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastFirstOrNull":I
    :goto_1
    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    const v3, 0x7fffffff

    if-eqz v11, :cond_2

    move-object v5, v11

    .local v5, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v6, 0x0

    .line 759
    .local v6, "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$leadingHeight$2":I
    invoke-interface {v5, v3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v7

    sub-int/2addr v2, v7

    .line 760
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v5, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 758
    .end local v5    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v6    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$leadingHeight$2":I
    goto :goto_2

    .line 761
    :cond_2
    const/4 v5, 0x0

    .line 758
    :goto_2
    nop

    .line 762
    .local v5, "leadingHeight":I
    move-object/from16 v6, p2

    .local v6, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1093
    .local v7, "$i$f$fastFirstOrNull":I
    nop

    .line 1094
    move-object v8, v6

    .local v8, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 1095
    .local v9, "$i$f$fastForEach":I
    nop

    .line 1096
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    :goto_3
    if-ge v10, v11, :cond_4

    .line 1097
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 1098
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 1094
    .local v14, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v15, v13

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v15, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v16, 0x0

    .line 762
    .local v16, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$trailingHeight$1":I
    invoke-static {v15}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v3, "Trailing"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 1094
    .end local v15    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v16    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$trailingHeight$1":I
    if-eqz v3, :cond_3

    goto :goto_4

    .line 1098
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_3
    nop

    .line 1096
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    const v3, 0x7fffffff

    goto :goto_3

    .line 1100
    .end local v10    # "index$iv$iv":I
    :cond_4
    nop

    .line 1101
    .end local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    const/4 v13, 0x0

    .line 762
    .end local v6    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastFirstOrNull":I
    :goto_4
    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v13, :cond_5

    move-object v3, v13

    .local v3, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 763
    .local v4, "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$trailingHeight$2":I
    const v6, 0x7fffffff

    invoke-interface {v3, v6}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v6

    sub-int/2addr v2, v6

    .line 764
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 762
    .end local v3    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$trailingHeight$2":I
    move v6, v3

    goto :goto_5

    .line 765
    :cond_5
    const/4 v6, 0x0

    .line 762
    :goto_5
    nop

    .line 767
    .local v6, "trailingHeight":I
    move-object/from16 v3, p2

    .local v3, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1102
    .local v4, "$i$f$fastFirstOrNull":I
    nop

    .line 1103
    move-object v7, v3

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 1104
    .local v8, "$i$f$fastForEach":I
    nop

    .line 1105
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    :goto_6
    if-ge v9, v10, :cond_7

    .line 1106
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1107
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1103
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v14, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v15, 0x0

    .line 767
    .local v15, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$labelHeight$1":I
    move-object/from16 v16, v3

    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v16, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static {v14}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v3

    move/from16 v17, v4

    .end local v4    # "$i$f$fastFirstOrNull":I
    .local v17, "$i$f$fastFirstOrNull":I
    const-string v4, "Label"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 1103
    .end local v14    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v15    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$labelHeight$1":I
    if-eqz v3, :cond_6

    goto :goto_7

    .line 1107
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_6
    nop

    .line 1105
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v17

    goto :goto_6

    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v17    # "$i$f$fastFirstOrNull":I
    .restart local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v4    # "$i$f$fastFirstOrNull":I
    :cond_7
    move-object/from16 v16, v3

    move/from16 v17, v4

    .line 1109
    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastFirstOrNull":I
    .end local v9    # "index$iv$iv":I
    .restart local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v17    # "$i$f$fastFirstOrNull":I
    nop

    .line 1110
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    const/4 v12, 0x0

    .line 767
    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v17    # "$i$f$fastFirstOrNull":I
    :goto_7
    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v12, :cond_8

    move-object v3, v12

    .local v3, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 768
    .local v4, "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$labelHeight$2":I
    iget v7, v0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->animationProgress:F

    move/from16 v15, p3

    invoke-static {v2, v15, v7}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v3, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 767
    .end local v3    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$labelHeight$2":I
    move v8, v3

    goto :goto_8

    .line 769
    :cond_8
    move/from16 v15, p3

    const/4 v8, 0x0

    .line 767
    :goto_8
    nop

    .line 772
    .local v8, "labelHeight":I
    move-object/from16 v3, p2

    .local v3, "$this$fastFirst$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1111
    .local v4, "$i$f$fastFirst":I
    nop

    .line 1112
    move-object v7, v3

    .restart local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 1113
    .local v9, "$i$f$fastForEach":I
    nop

    .line 1114
    const/4 v10, 0x0

    .restart local v10    # "index$iv$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    :goto_9
    if-ge v10, v11, :cond_d

    .line 1115
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 1116
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 1112
    .local v14, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object/from16 v16, v13

    check-cast v16, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v16, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v17, 0x0

    .line 772
    .local v17, "$i$a$-fastFirst-OutlinedTextFieldMeasurePolicy$intrinsicHeight$textFieldHeight$1":I
    move-object/from16 v18, v3

    .end local v3    # "$this$fastFirst$iv":Ljava/util/List;
    .local v18, "$this$fastFirst$iv":Ljava/util/List;
    invoke-static/range {v16 .. v16}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v3

    move/from16 v19, v4

    .end local v4    # "$i$f$fastFirst":I
    .local v19, "$i$f$fastFirst":I
    const-string/jumbo v4, "TextField"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 1112
    .end local v16    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v17    # "$i$a$-fastFirst-OutlinedTextFieldMeasurePolicy$intrinsicHeight$textFieldHeight$1":I
    if-eqz v3, :cond_c

    .line 772
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    .end local v10    # "index$iv$iv":I
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v18    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastFirst":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v13, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 771
    nop

    .line 773
    .local v7, "textFieldHeight":I
    move-object/from16 v3, p2

    .local v3, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1120
    .local v4, "$i$f$fastFirstOrNull":I
    nop

    .line 1121
    move-object v9, v3

    .local v9, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 1122
    .local v10, "$i$f$fastForEach":I
    nop

    .line 1123
    const/4 v11, 0x0

    .local v11, "index$iv$iv":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    :goto_a
    if-ge v11, v12, :cond_a

    .line 1124
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 1125
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 1121
    .local v16, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v17, v14

    check-cast v17, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v17, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v18, 0x0

    .line 773
    .local v18, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$placeholderHeight$1":I
    move-object/from16 v19, v3

    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v19, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static/range {v17 .. v17}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v3

    move/from16 v20, v4

    .end local v4    # "$i$f$fastFirstOrNull":I
    .local v20, "$i$f$fastFirstOrNull":I
    const-string v4, "Hint"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 1121
    .end local v17    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v18    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicHeight$placeholderHeight$1":I
    if-eqz v3, :cond_9

    move-object v9, v14

    goto :goto_b

    .line 1125
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_9
    nop

    .line 1123
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v19

    move/from16 v4, v20

    goto :goto_a

    .end local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v20    # "$i$f$fastFirstOrNull":I
    .restart local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v4    # "$i$f$fastFirstOrNull":I
    :cond_a
    move-object/from16 v19, v3

    move/from16 v20, v4

    .line 1127
    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastFirstOrNull":I
    .end local v11    # "index$iv$iv":I
    .restart local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v20    # "$i$f$fastFirstOrNull":I
    nop

    .line 1128
    .end local v9    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastForEach":I
    const/4 v9, 0x0

    .line 773
    .end local v19    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v20    # "$i$f$fastFirstOrNull":I
    :goto_b
    check-cast v9, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v9, :cond_b

    move-object v3, v9

    .local v3, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 774
    .local v4, "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$placeholderHeight$2":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v3, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 773
    .end local v3    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicHeight$placeholderHeight$2":I
    move v9, v4

    goto :goto_c

    .line 775
    :cond_b
    const/4 v9, 0x0

    .line 773
    :goto_c
    nop

    .line 778
    .local v9, "placeholderHeight":I
    nop

    .line 779
    nop

    .line 780
    nop

    .line 781
    nop

    .line 782
    nop

    .line 783
    iget v10, v0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->animationProgress:F

    .line 784
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->getZeroConstraints()J

    move-result-wide v11

    .line 785
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getDensity()F

    move-result v13

    .line 786
    iget-object v14, v0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 777
    invoke-static/range {v5 .. v14}, Landroidx/compose/material/OutlinedTextFieldKt;->access$calculateHeight-O3s9Psw(IIIIIFJFLandroidx/compose/foundation/layout/PaddingValues;)I

    move-result v3

    return v3

    .line 1116
    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v9, "$i$f$fastForEach":I
    .local v10, "index$iv$iv":I
    .restart local v12    # "item$iv$iv":Ljava/lang/Object;
    .local v18, "$this$fastFirst$iv":Ljava/util/List;
    .local v19, "$i$f$fastFirst":I
    :cond_c
    nop

    .line 1114
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v18

    move/from16 v4, v19

    goto/16 :goto_9

    .end local v18    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastFirst":I
    .local v3, "$this$fastFirst$iv":Ljava/util/List;
    .local v4, "$i$f$fastFirst":I
    :cond_d
    move-object/from16 v18, v3

    move/from16 v19, v4

    .line 1118
    .end local v3    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastFirst":I
    .end local v10    # "index$iv$iv":I
    .restart local v18    # "$this$fastFirst$iv":Ljava/util/List;
    .restart local v19    # "$i$f$fastFirst":I
    nop

    .line 1119
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    new-instance v3, Ljava/util/NoSuchElementException;

    const-string v4, "Collection contains no element matching the predicate."

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private final intrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 19
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

    .line 726
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    .local v2, "$this$fastFirst$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1039
    .local v3, "$i$f$fastFirst":I
    nop

    .line 1040
    move-object v4, v2

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1041
    .local v5, "$i$f$fastForEach":I
    nop

    .line 1042
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_d

    .line 1043
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1044
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1040
    .local v10, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v11, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v12, 0x0

    .line 726
    .local v12, "$i$a$-fastFirst-OutlinedTextFieldMeasurePolicy$intrinsicWidth$textFieldWidth$1":I
    invoke-static {v11}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v13

    const-string/jumbo v14, "TextField"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .line 1040
    .end local v11    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v12    # "$i$a$-fastFirst-OutlinedTextFieldMeasurePolicy$intrinsicWidth$textFieldWidth$1":I
    if-eqz v11, :cond_c

    .line 726
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

    move-result v5

    .line 725
    nop

    .line 727
    .local v5, "textFieldWidth":I
    move-object/from16 v2, p2

    .local v2, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1048
    .local v3, "$i$f$fastFirstOrNull":I
    nop

    .line 1049
    move-object v4, v2

    .restart local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1050
    .local v6, "$i$f$fastForEach":I
    nop

    .line 1051
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    :goto_1
    if-ge v7, v8, :cond_1

    .line 1052
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1053
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1049
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v13, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v14, 0x0

    .line 727
    .local v14, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicWidth$labelWidth$1":I
    invoke-static {v13}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    const-string v9, "Label"

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 1049
    .end local v13    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v14    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicWidth$labelWidth$1":I
    if-eqz v9, :cond_0

    goto :goto_2

    .line 1053
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_0
    nop

    .line 1051
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1055
    .end local v7    # "index$iv$iv":I
    :cond_1
    nop

    .line 1056
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    const/4 v11, 0x0

    .line 727
    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastFirstOrNull":I
    :goto_2
    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v11, :cond_2

    move-object v3, v11

    .local v3, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v4, 0x0

    .line 728
    .local v4, "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicWidth$labelWidth$2":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 727
    .end local v3    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v4    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicWidth$labelWidth$2":I
    move v6, v3

    goto :goto_3

    .line 729
    :cond_2
    const/4 v6, 0x0

    .line 727
    :goto_3
    nop

    .line 730
    .local v6, "labelWidth":I
    move-object/from16 v3, p2

    .local v3, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1057
    .local v4, "$i$f$fastFirstOrNull":I
    nop

    .line 1058
    move-object v7, v3

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 1059
    .local v8, "$i$f$fastForEach":I
    nop

    .line 1060
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    :goto_4
    if-ge v9, v10, :cond_4

    .line 1061
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1062
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1058
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v14, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v15, 0x0

    .line 730
    .local v15, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicWidth$trailingWidth$1":I
    invoke-static {v14}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v3

    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v16, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const-string/jumbo v3, "Trailing"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1058
    .end local v14    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v15    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicWidth$trailingWidth$1":I
    if-eqz v2, :cond_3

    goto :goto_5

    .line 1062
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_3
    nop

    .line 1060
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v16

    goto :goto_4

    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :cond_4
    move-object/from16 v16, v3

    .line 1064
    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v9    # "index$iv$iv":I
    .restart local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    nop

    .line 1065
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    const/4 v12, 0x0

    .line 730
    .end local v4    # "$i$f$fastFirstOrNull":I
    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_5
    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v12, :cond_5

    move-object v2, v12

    .local v2, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v3, 0x0

    .line 731
    .local v3, "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicWidth$trailingWidth$2":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 730
    .end local v2    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v3    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicWidth$trailingWidth$2":I
    move v4, v2

    goto :goto_6

    .line 732
    :cond_5
    const/4 v4, 0x0

    .line 730
    :goto_6
    nop

    .line 733
    .local v4, "trailingWidth":I
    move-object/from16 v2, p2

    .local v2, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1066
    .local v3, "$i$f$fastFirstOrNull":I
    nop

    .line 1067
    move-object v7, v2

    .restart local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 1068
    .restart local v8    # "$i$f$fastForEach":I
    nop

    .line 1069
    const/4 v9, 0x0

    .restart local v9    # "index$iv$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    :goto_7
    if-ge v9, v10, :cond_7

    .line 1070
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1071
    .restart local v11    # "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .restart local v12    # "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1067
    .restart local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .restart local v14    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v15, 0x0

    .line 733
    .local v15, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicWidth$leadingWidth$1":I
    move-object/from16 v16, v2

    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static {v14}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v2

    move/from16 v17, v3

    .end local v3    # "$i$f$fastFirstOrNull":I
    .local v17, "$i$f$fastFirstOrNull":I
    const-string/jumbo v3, "Leading"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1067
    .end local v14    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v15    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicWidth$leadingWidth$1":I
    if-eqz v2, :cond_6

    goto :goto_8

    .line 1071
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_6
    nop

    .line 1069
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

    .line 1073
    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastFirstOrNull":I
    .end local v9    # "index$iv$iv":I
    .restart local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v17    # "$i$f$fastFirstOrNull":I
    nop

    .line 1074
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    const/4 v12, 0x0

    .line 733
    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v17    # "$i$f$fastFirstOrNull":I
    :goto_8
    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v12, :cond_8

    move-object v2, v12

    .local v2, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v3, 0x0

    .line 734
    .local v3, "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicWidth$leadingWidth$2":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v2, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 733
    .end local v2    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v3    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicWidth$leadingWidth$2":I
    move v3, v2

    goto :goto_9

    .line 735
    :cond_8
    const/4 v3, 0x0

    .line 733
    :goto_9
    nop

    .line 736
    .local v3, "leadingWidth":I
    move-object/from16 v2, p2

    .local v2, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1075
    .local v7, "$i$f$fastFirstOrNull":I
    nop

    .line 1076
    move-object v8, v2

    .local v8, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 1077
    .local v9, "$i$f$fastForEach":I
    nop

    .line 1078
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    :goto_a
    if-ge v10, v11, :cond_a

    .line 1079
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 1080
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 1076
    .local v14, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object v15, v13

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v15, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v16, 0x0

    .line 736
    .local v16, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicWidth$placeholderWidth$1":I
    move-object/from16 v17, v2

    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v17, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static {v15}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v2

    move/from16 v18, v7

    .end local v7    # "$i$f$fastFirstOrNull":I
    .local v18, "$i$f$fastFirstOrNull":I
    const-string v7, "Hint"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1076
    .end local v15    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v16    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$intrinsicWidth$placeholderWidth$1":I
    if-eqz v2, :cond_9

    move-object v9, v13

    goto :goto_b

    .line 1080
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_9
    nop

    .line 1078
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v17

    move/from16 v7, v18

    goto :goto_a

    .end local v17    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastFirstOrNull":I
    .restart local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v7    # "$i$f$fastFirstOrNull":I
    :cond_a
    move-object/from16 v17, v2

    move/from16 v18, v7

    .line 1082
    .end local v2    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastFirstOrNull":I
    .end local v10    # "index$iv$iv":I
    .restart local v17    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v18    # "$i$f$fastFirstOrNull":I
    nop

    .line 1083
    .end local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    const/4 v9, 0x0

    .line 736
    .end local v17    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastFirstOrNull":I
    :goto_b
    check-cast v9, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v9, :cond_b

    move-object v2, v9

    .local v2, "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v7, 0x0

    .line 737
    .local v7, "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicWidth$placeholderWidth$2":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v2, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 736
    .end local v2    # "it":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v7    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$intrinsicWidth$placeholderWidth$2":I
    move v7, v2

    goto :goto_c

    .line 738
    :cond_b
    const/4 v7, 0x0

    .line 736
    :goto_c
    nop

    .line 740
    .local v7, "placeholderWidth":I
    nop

    .line 741
    nop

    .line 742
    nop

    .line 743
    nop

    .line 744
    nop

    .line 745
    iget v8, v0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->animationProgress:F

    .line 746
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->getZeroConstraints()J

    move-result-wide v9

    .line 747
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getDensity()F

    move-result v11

    .line 748
    iget-object v12, v0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 739
    invoke-static/range {v3 .. v12}, Landroidx/compose/material/OutlinedTextFieldKt;->access$calculateWidth-O3s9Psw(IIIIIFJFLandroidx/compose/foundation/layout/PaddingValues;)I

    move-result v2

    return v2

    .line 1044
    .end local v7    # "placeholderWidth":I
    .local v2, "$this$fastFirst$iv":Ljava/util/List;
    .local v3, "$i$f$fastFirst":I
    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v5, "$i$f$fastForEach":I
    .local v6, "index$iv$iv":I
    .local v8, "item$iv$iv":Ljava/lang/Object;
    :cond_c
    nop

    .line 1042
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1046
    .end local v6    # "index$iv$iv":I
    :cond_d
    nop

    .line 1047
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

    .line 688
    sget-object v0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$maxIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$maxIntrinsicHeight$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

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

    .line 706
    sget-object v0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$maxIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$maxIntrinsicWidth$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->intrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result v0

    return v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 38
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

    .line 576
    move-object/from16 v11, p0

    move-object/from16 v15, p1

    const/4 v0, 0x0

    .line 577
    .local v0, "occupiedSpaceHorizontally":I
    iget-object v1, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v1

    invoke-interface {v15, v1}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v14

    .line 580
    .local v14, "bottomPadding":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    move-wide/from16 v1, p3

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v12

    .line 583
    .local v12, "relaxedConstraints":J
    nop

    .line 581
    move-object/from16 v1, p2

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 985
    .local v2, "$i$f$fastFirstOrNull":I
    nop

    .line 986
    move-object v3, v1

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 987
    .local v4, "$i$f$fastForEach":I
    nop

    .line 988
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_1

    .line 989
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 990
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 986
    .local v10, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v16, v9

    check-cast v16, Landroidx/compose/ui/layout/Measurable;

    .local v16, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v17, 0x0

    .line 582
    .local v17, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$leadingPlaceable$1":I
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v18, v1

    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v18, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const-string/jumbo v1, "Leading"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 986
    .end local v16    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v17    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$leadingPlaceable$1":I
    if-eqz v1, :cond_0

    goto :goto_1

    .line 990
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_0
    nop

    .line 988
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v18

    goto :goto_0

    .end local v18    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :cond_1
    move-object/from16 v18, v1

    .line 992
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v5    # "index$iv$iv":I
    .restart local v18    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    nop

    .line 993
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    const/4 v9, 0x0

    .line 581
    .end local v2    # "$i$f$fastFirstOrNull":I
    .end local v18    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_1
    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 583
    if-eqz v9, :cond_2

    .line 581
    nop

    .line 583
    invoke-interface {v9, v12, v13}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    move-object v3, v1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 581
    :goto_2
    nop

    .line 584
    .local v3, "leadingPlaceable":Landroidx/compose/ui/layout/Placeable;
    nop

    .line 585
    nop

    .line 584
    invoke-static {v3}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    add-int/2addr v0, v1

    .line 590
    nop

    .line 589
    move-object/from16 v1, p2

    .restart local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 994
    .restart local v2    # "$i$f$fastFirstOrNull":I
    nop

    .line 995
    move-object v4, v1

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 996
    .local v5, "$i$f$fastForEach":I
    nop

    .line 997
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_3
    if-ge v6, v7, :cond_4

    .line 998
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 999
    .restart local v8    # "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .restart local v9    # "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 995
    .restart local v10    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v16, v9

    check-cast v16, Landroidx/compose/ui/layout/Measurable;

    .restart local v16    # "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v17, 0x0

    .line 589
    .local v17, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$trailingPlaceable$1":I
    move-object/from16 v18, v1

    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v18    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v1

    move/from16 v19, v2

    .end local v2    # "$i$f$fastFirstOrNull":I
    .local v19, "$i$f$fastFirstOrNull":I
    const-string/jumbo v2, "Trailing"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 995
    .end local v16    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v17    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$trailingPlaceable$1":I
    if-eqz v1, :cond_3

    goto :goto_4

    .line 999
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_3
    nop

    .line 997
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v18

    move/from16 v2, v19

    goto :goto_3

    .end local v18    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastFirstOrNull":I
    .restart local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v2    # "$i$f$fastFirstOrNull":I
    :cond_4
    move-object/from16 v18, v1

    move/from16 v19, v2

    .line 1001
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastFirstOrNull":I
    .end local v6    # "index$iv$iv":I
    .restart local v18    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v19    # "$i$f$fastFirstOrNull":I
    nop

    .line 1002
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    const/4 v9, 0x0

    .line 589
    .end local v18    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastFirstOrNull":I
    :goto_4
    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 590
    if-eqz v9, :cond_5

    .line 589
    nop

    .line 590
    neg-int v1, v0

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    move-wide/from16 v16, v12

    move/from16 v18, v1

    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v1

    invoke-interface {v9, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    move-object v4, v1

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    .line 589
    :goto_5
    nop

    .line 591
    .local v4, "trailingPlaceable":Landroidx/compose/ui/layout/Placeable;
    nop

    .line 592
    nop

    .line 591
    invoke-static {v4}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    add-int v10, v0, v1

    .line 597
    .end local v0    # "occupiedSpaceHorizontally":I
    .local v10, "occupiedSpaceHorizontally":I
    iget-object v0, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v15, v0}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    .line 598
    iget-object v1, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v1

    invoke-interface {v15, v1}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v1

    .line 597
    add-int/2addr v0, v1

    .line 596
    move v9, v0

    .line 599
    .local v9, "labelHorizontalPaddingOffset":I
    nop

    .line 601
    neg-int v0, v10

    sub-int/2addr v0, v9

    .line 602
    neg-int v1, v9

    .line 603
    iget v2, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->animationProgress:F

    .line 600
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v0

    .line 605
    neg-int v1, v14

    .line 599
    invoke-static {v12, v13, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v1

    .line 608
    .local v1, "labelConstraints":J
    move-object/from16 v0, p2

    .local v0, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1003
    .local v5, "$i$f$fastFirstOrNull":I
    nop

    .line 1004
    move-object v6, v0

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1005
    .local v7, "$i$f$fastForEach":I
    nop

    .line 1006
    const/4 v8, 0x0

    move-object/from16 v16, v0

    .end local v0    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v8, "index$iv$iv":I
    .local v16, "$this$fastFirstOrNull$iv":Ljava/util/List;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    :goto_6
    if-ge v8, v0, :cond_7

    .line 1007
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 1008
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v17

    .local v18, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 1004
    .local v19, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v20, v18

    check-cast v20, Landroidx/compose/ui/layout/Measurable;

    .local v20, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v21, 0x0

    .line 608
    .local v21, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$labelPlaceable$1":I
    move/from16 v23, v0

    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v0

    move/from16 v24, v5

    .end local v5    # "$i$f$fastFirstOrNull":I
    .local v24, "$i$f$fastFirstOrNull":I
    const-string v5, "Label"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1004
    .end local v20    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v21    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$labelPlaceable$1":I
    if-eqz v0, :cond_6

    goto :goto_7

    .line 1008
    .end local v18    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_6
    nop

    .line 1006
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v23

    move/from16 v5, v24

    goto :goto_6

    .end local v24    # "$i$f$fastFirstOrNull":I
    .restart local v5    # "$i$f$fastFirstOrNull":I
    :cond_7
    move/from16 v24, v5

    .line 1010
    .end local v5    # "$i$f$fastFirstOrNull":I
    .end local v8    # "index$iv$iv":I
    .restart local v24    # "$i$f$fastFirstOrNull":I
    nop

    .line 1011
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/16 v18, 0x0

    .line 608
    .end local v16    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v24    # "$i$f$fastFirstOrNull":I
    :goto_7
    move-object/from16 v0, v18

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    if-eqz v0, :cond_8

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    .line 607
    :goto_8
    move-object/from16 v19, v0

    .line 609
    .local v19, "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    if-eqz v19, :cond_9

    move-object/from16 v0, v19

    .local v0, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v5, 0x0

    .line 610
    .local v5, "$i$a$-let-OutlinedTextFieldMeasurePolicy$measure$1":I
    iget-object v6, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->onLabelMeasured:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    nop

    .line 609
    .end local v0    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v5    # "$i$a$-let-OutlinedTextFieldMeasurePolicy$measure$1":I
    nop

    .line 616
    :cond_9
    nop

    .line 617
    invoke-static/range {v19 .. v19}, Landroidx/compose/material/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 618
    iget-object v5, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v5}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v5

    invoke-interface {v15, v5}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 616
    move/from16 v20, v0

    .line 620
    .local v20, "topPadding":I
    nop

    .line 621
    neg-int v0, v10

    .line 622
    neg-int v5, v14

    sub-int v5, v5, v20

    .line 620
    move-wide/from16 v6, p3

    invoke-static {v6, v7, v0, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v23

    .line 623
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0xb

    const/16 v30, 0x0

    invoke-static/range {v23 .. v30}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v16

    .line 620
    move-wide/from16 v33, v16

    .line 625
    .local v33, "textConstraints":J
    move-object/from16 v0, p2

    .local v0, "$this$fastFirst$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1012
    .local v5, "$i$f$fastFirst":I
    nop

    .line 1013
    move-object v8, v0

    .local v8, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 1014
    .local v16, "$i$f$fastForEach":I
    nop

    .line 1015
    const/16 v17, 0x0

    move-object/from16 v18, v0

    .end local v0    # "$this$fastFirst$iv":Ljava/util/List;
    .local v17, "index$iv$iv":I
    .local v18, "$this$fastFirst$iv":Ljava/util/List;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    move-wide/from16 v35, v1

    move/from16 v1, v17

    .end local v17    # "index$iv$iv":I
    .local v1, "index$iv$iv":I
    .local v35, "labelConstraints":J
    :goto_9
    const-string v2, "Collection contains no element matching the predicate."

    if-ge v1, v0, :cond_12

    .line 1016
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 1017
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v21, v17

    .local v21, "it$iv":Ljava/lang/Object;
    const/16 v23, 0x0

    .line 1013
    .local v23, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object/from16 v24, v21

    check-cast v24, Landroidx/compose/ui/layout/Measurable;

    .local v24, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v25, 0x0

    .line 625
    .local v25, "$i$a$-fastFirst-OutlinedTextFieldMeasurePolicy$measure$textFieldPlaceable$1":I
    move/from16 v26, v0

    invoke-static/range {v24 .. v24}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v0

    move/from16 v27, v5

    .end local v5    # "$i$f$fastFirst":I
    .local v27, "$i$f$fastFirst":I
    const-string/jumbo v5, "TextField"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1013
    .end local v24    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v25    # "$i$a$-fastFirst-OutlinedTextFieldMeasurePolicy$measure$textFieldPlaceable$1":I
    if-eqz v0, :cond_11

    .line 1020
    .end local v1    # "index$iv$iv":I
    .end local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v16    # "$i$f$fastForEach":I
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    .end local v18    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v21    # "it$iv":Ljava/lang/Object;
    .end local v23    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v27    # "$i$f$fastFirst":I
    move-object/from16 v0, v21

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 625
    move/from16 v37, v14

    move-wide/from16 v14, v33

    .end local v33    # "textConstraints":J
    .local v14, "textConstraints":J
    .local v37, "bottomPadding":I
    invoke-interface {v0, v14, v15}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v5

    .line 624
    nop

    .line 628
    .local v5, "textFieldPlaceable":Landroidx/compose/ui/layout/Placeable;
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0xe

    const/16 v30, 0x0

    move-wide/from16 v23, v14

    invoke-static/range {v23 .. v30}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v0

    .line 630
    .local v0, "placeholderConstraints":J
    nop

    .line 629
    move-object/from16 v8, p2

    .local v8, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 1021
    .local v16, "$i$f$fastFirstOrNull":I
    nop

    .line 1022
    move-object/from16 v17, v8

    .local v17, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v18, 0x0

    .line 1023
    .local v18, "$i$f$fastForEach":I
    nop

    .line 1024
    const/16 v21, 0x0

    .local v21, "index$iv$iv":I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v7, v21

    .end local v21    # "index$iv$iv":I
    .local v7, "index$iv$iv":I
    :goto_a
    if-ge v7, v6, :cond_b

    .line 1025
    move/from16 v21, v6

    move-object/from16 v6, v17

    .end local v17    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 1026
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v23, v17

    .local v23, "it$iv":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 1022
    .local v24, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    move-object/from16 v25, v23

    check-cast v25, Landroidx/compose/ui/layout/Measurable;

    .local v25, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v26, 0x0

    .line 629
    .local v26, "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$placeholderPlaceable$1":I
    move-object/from16 v27, v6

    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v27, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v28, v8

    .end local v8    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v28, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const-string v8, "Hint"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 1022
    .end local v25    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v26    # "$i$a$-fastFirstOrNull-OutlinedTextFieldMeasurePolicy$measure$placeholderPlaceable$1":I
    if-eqz v6, :cond_a

    goto :goto_b

    .line 1026
    .end local v23    # "it$iv":Ljava/lang/Object;
    .end local v24    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$2$iv":I
    :cond_a
    nop

    .line 1024
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v21

    move-object/from16 v17, v27

    move-object/from16 v8, v28

    goto :goto_a

    .end local v27    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v28    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v8    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v17, "$this$fastForEach$iv$iv":Ljava/util/List;
    :cond_b
    move-object/from16 v28, v8

    move-object/from16 v27, v17

    .line 1028
    .end local v7    # "index$iv$iv":I
    .end local v8    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v17    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v27    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v28    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    nop

    .line 1029
    .end local v18    # "$i$f$fastForEach":I
    .end local v27    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v23, 0x0

    .line 629
    .end local v16    # "$i$f$fastFirstOrNull":I
    .end local v28    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    :goto_b
    move-object/from16 v6, v23

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 630
    if-eqz v6, :cond_c

    .line 629
    nop

    .line 630
    invoke-interface {v6, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v6

    move-object v7, v6

    goto :goto_c

    :cond_c
    const/4 v7, 0x0

    .line 629
    :goto_c
    nop

    .line 634
    .local v7, "placeholderPlaceable":Landroidx/compose/ui/layout/Placeable;
    invoke-static {v3}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v23

    .line 635
    invoke-static {v4}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v24

    .line 636
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v25

    .line 637
    invoke-static/range {v19 .. v19}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v26

    .line 638
    invoke-static {v7}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v27

    .line 639
    iget v6, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->animationProgress:F

    .line 640
    nop

    .line 641
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->getDensity()F

    move-result v31

    .line 642
    iget-object v8, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 633
    move/from16 v28, v6

    move-wide/from16 v29, p3

    move-object/from16 v32, v8

    invoke-static/range {v23 .. v32}, Landroidx/compose/material/OutlinedTextFieldKt;->access$calculateWidth-O3s9Psw(IIIIIFJFLandroidx/compose/foundation/layout/PaddingValues;)I

    move-result v6

    .line 632
    move v8, v6

    .line 646
    .local v8, "width":I
    invoke-static {v3}, Landroidx/compose/material/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v23

    .line 647
    invoke-static {v4}, Landroidx/compose/material/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v24

    .line 648
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v25

    .line 649
    invoke-static/range {v19 .. v19}, Landroidx/compose/material/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v26

    .line 650
    invoke-static {v7}, Landroidx/compose/material/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v27

    .line 651
    iget v6, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->animationProgress:F

    .line 652
    nop

    .line 653
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->getDensity()F

    move-result v31

    .line 654
    move-wide/from16 v16, v0

    .end local v0    # "placeholderConstraints":J
    .local v16, "placeholderConstraints":J
    iget-object v0, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 645
    move/from16 v28, v6

    move-object/from16 v32, v0

    invoke-static/range {v23 .. v32}, Landroidx/compose/material/OutlinedTextFieldKt;->access$calculateHeight-O3s9Psw(IIIIIFJFLandroidx/compose/foundation/layout/PaddingValues;)I

    move-result v0

    .line 644
    move v6, v0

    .line 657
    .local v6, "height":I
    move-object/from16 v0, p2

    .local v0, "$this$fastFirst$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1030
    .local v1, "$i$f$fastFirst":I
    nop

    .line 1031
    move-object/from16 v18, v0

    .local v18, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v21, 0x0

    .line 1032
    .local v21, "$i$f$fastForEach":I
    nop

    .line 1033
    const/16 v22, 0x0

    move-object/from16 v23, v0

    .end local v0    # "$this$fastFirst$iv":Ljava/util/List;
    .local v22, "index$iv$iv":I
    .local v23, "$this$fastFirst$iv":Ljava/util/List;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v24, v1

    move/from16 v1, v22

    .end local v22    # "index$iv$iv":I
    .local v1, "index$iv$iv":I
    .local v24, "$i$f$fastFirst":I
    :goto_d
    if-ge v1, v0, :cond_10

    .line 1034
    move/from16 v22, v0

    move-object/from16 v0, v18

    .end local v18    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v0, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 1035
    .local v18, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v25, v18

    .local v25, "it$iv":Ljava/lang/Object;
    const/16 v26, 0x0

    .line 1031
    .local v26, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object/from16 v27, v25

    check-cast v27, Landroidx/compose/ui/layout/Measurable;

    .local v27, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v28, 0x0

    .line 657
    .local v28, "$i$a$-fastFirst-OutlinedTextFieldMeasurePolicy$measure$borderPlaceable$1":I
    move-object/from16 v29, v0

    .end local v0    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v29, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-static/range {v27 .. v27}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v0

    move/from16 v30, v9

    .end local v9    # "labelHorizontalPaddingOffset":I
    .local v30, "labelHorizontalPaddingOffset":I
    const-string/jumbo v9, "border"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1031
    .end local v27    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v28    # "$i$a$-fastFirst-OutlinedTextFieldMeasurePolicy$measure$borderPlaceable$1":I
    if-eqz v0, :cond_f

    .line 1038
    .end local v1    # "index$iv$iv":I
    .end local v18    # "item$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$fastForEach":I
    .end local v23    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v24    # "$i$f$fastFirst":I
    .end local v25    # "it$iv":Ljava/lang/Object;
    .end local v26    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v29    # "$this$fastForEach$iv$iv":Ljava/util/List;
    move-object/from16 v0, v25

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 659
    const/4 v1, 0x0

    const v2, 0x7fffffff

    if-eq v8, v2, :cond_d

    move v9, v8

    goto :goto_e

    :cond_d
    move v9, v1

    .line 660
    :goto_e
    nop

    .line 661
    if-eq v6, v2, :cond_e

    move v1, v6

    .line 662
    :cond_e
    nop

    .line 658
    invoke-static {v9, v8, v1, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v1

    .line 657
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v21

    .line 665
    .local v21, "borderPlaceable":Landroidx/compose/ui/layout/Placeable;
    const/16 v18, 0x0

    new-instance v22, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$measure$2;

    move-wide/from16 v27, v16

    .end local v16    # "placeholderConstraints":J
    .local v27, "placeholderConstraints":J
    move-object/from16 v0, v22

    move-wide/from16 v31, v35

    .end local v35    # "labelConstraints":J
    .local v31, "labelConstraints":J
    move v1, v6

    move v2, v8

    move/from16 v33, v6

    .end local v6    # "height":I
    .local v33, "height":I
    move-object/from16 v6, v19

    move/from16 v34, v8

    .end local v8    # "width":I
    .local v34, "width":I
    move-object/from16 v8, v21

    move-object/from16 v9, p0

    move/from16 v35, v10

    .end local v10    # "occupiedSpaceHorizontally":I
    .local v35, "occupiedSpaceHorizontally":I
    move-object/from16 v10, p1

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$measure$2;-><init>(IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;Landroidx/compose/ui/layout/MeasureScope;)V

    move-object/from16 v16, v22

    check-cast v16, Lkotlin/jvm/functions/Function1;

    const/16 v17, 0x4

    const/4 v0, 0x0

    move-wide v9, v12

    .end local v12    # "relaxedConstraints":J
    .local v9, "relaxedConstraints":J
    move-object/from16 v12, p1

    move/from16 v13, v34

    move/from16 v6, v37

    move-wide/from16 v36, v14

    .end local v14    # "textConstraints":J
    .end local v37    # "bottomPadding":I
    .local v6, "bottomPadding":I
    .local v36, "textConstraints":J
    move/from16 v14, v33

    move-object/from16 v15, v18

    move-object/from16 v18, v0

    invoke-static/range {v12 .. v18}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    .line 1031
    .end local v9    # "relaxedConstraints":J
    .end local v27    # "placeholderConstraints":J
    .end local v31    # "labelConstraints":J
    .end local v33    # "height":I
    .end local v34    # "width":I
    .end local v36    # "textConstraints":J
    .restart local v1    # "index$iv$iv":I
    .local v6, "height":I
    .restart local v8    # "width":I
    .restart local v10    # "occupiedSpaceHorizontally":I
    .restart local v12    # "relaxedConstraints":J
    .restart local v14    # "textConstraints":J
    .restart local v16    # "placeholderConstraints":J
    .restart local v18    # "item$iv$iv":Ljava/lang/Object;
    .local v21, "$i$f$fastForEach":I
    .restart local v23    # "$this$fastFirst$iv":Ljava/util/List;
    .restart local v24    # "$i$f$fastFirst":I
    .restart local v25    # "it$iv":Ljava/lang/Object;
    .restart local v26    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .restart local v29    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v35, "labelConstraints":J
    .restart local v37    # "bottomPadding":I
    :cond_f
    move/from16 v33, v6

    move/from16 v34, v8

    move-wide/from16 v27, v16

    move-wide/from16 v31, v35

    move/from16 v6, v37

    move/from16 v35, v10

    move-wide v9, v12

    move-wide/from16 v36, v14

    .line 1035
    .end local v8    # "width":I
    .end local v10    # "occupiedSpaceHorizontally":I
    .end local v12    # "relaxedConstraints":J
    .end local v14    # "textConstraints":J
    .end local v16    # "placeholderConstraints":J
    .end local v25    # "it$iv":Ljava/lang/Object;
    .end local v26    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v37    # "bottomPadding":I
    .local v6, "bottomPadding":I
    .restart local v9    # "relaxedConstraints":J
    .restart local v27    # "placeholderConstraints":J
    .restart local v31    # "labelConstraints":J
    .restart local v33    # "height":I
    .restart local v34    # "width":I
    .local v35, "occupiedSpaceHorizontally":I
    .restart local v36    # "textConstraints":J
    nop

    .line 1033
    .end local v18    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v22

    move-object/from16 v18, v29

    move/from16 v9, v30

    move/from16 v10, v35

    move/from16 v37, v6

    move-wide/from16 v35, v31

    move/from16 v6, v33

    goto/16 :goto_d

    .line 1037
    .end local v1    # "index$iv$iv":I
    .end local v27    # "placeholderConstraints":J
    .end local v29    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v30    # "labelHorizontalPaddingOffset":I
    .end local v31    # "labelConstraints":J
    .end local v33    # "height":I
    .end local v34    # "width":I
    .end local v36    # "textConstraints":J
    .local v6, "height":I
    .restart local v8    # "width":I
    .local v9, "labelHorizontalPaddingOffset":I
    .restart local v10    # "occupiedSpaceHorizontally":I
    .restart local v12    # "relaxedConstraints":J
    .restart local v14    # "textConstraints":J
    .restart local v16    # "placeholderConstraints":J
    .local v18, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v35, "labelConstraints":J
    .restart local v37    # "bottomPadding":I
    :cond_10
    nop

    .line 1038
    .end local v18    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v21    # "$i$f$fastForEach":I
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1013
    .end local v5    # "textFieldPlaceable":Landroidx/compose/ui/layout/Placeable;
    .end local v6    # "height":I
    .end local v7    # "placeholderPlaceable":Landroidx/compose/ui/layout/Placeable;
    .end local v24    # "$i$f$fastFirst":I
    .end local v37    # "bottomPadding":I
    .restart local v1    # "index$iv$iv":I
    .local v8, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v14, "bottomPadding":I
    .local v16, "$i$f$fastForEach":I
    .local v17, "item$iv$iv":Ljava/lang/Object;
    .local v18, "$this$fastFirst$iv":Ljava/util/List;
    .local v21, "it$iv":Ljava/lang/Object;
    .local v23, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .local v27, "$i$f$fastFirst":I
    .local v33, "textConstraints":J
    :cond_11
    move/from16 v30, v9

    move v6, v14

    move-wide/from16 v31, v35

    move/from16 v35, v10

    move-wide v9, v12

    move-wide/from16 v36, v33

    .line 1017
    .end local v10    # "occupiedSpaceHorizontally":I
    .end local v12    # "relaxedConstraints":J
    .end local v14    # "bottomPadding":I
    .end local v21    # "it$iv":Ljava/lang/Object;
    .end local v23    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v33    # "textConstraints":J
    .local v6, "bottomPadding":I
    .local v9, "relaxedConstraints":J
    .restart local v30    # "labelHorizontalPaddingOffset":I
    .restart local v31    # "labelConstraints":J
    .local v35, "occupiedSpaceHorizontally":I
    .restart local v36    # "textConstraints":J
    nop

    .line 1015
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v15, p1

    move/from16 v0, v26

    move/from16 v5, v27

    move/from16 v9, v30

    move/from16 v10, v35

    move-wide/from16 v6, p3

    move-wide/from16 v35, v31

    goto/16 :goto_9

    .line 1019
    .end local v1    # "index$iv$iv":I
    .end local v6    # "bottomPadding":I
    .end local v27    # "$i$f$fastFirst":I
    .end local v30    # "labelHorizontalPaddingOffset":I
    .end local v31    # "labelConstraints":J
    .end local v36    # "textConstraints":J
    .local v5, "$i$f$fastFirst":I
    .local v9, "labelHorizontalPaddingOffset":I
    .restart local v10    # "occupiedSpaceHorizontally":I
    .restart local v12    # "relaxedConstraints":J
    .restart local v14    # "bottomPadding":I
    .restart local v33    # "textConstraints":J
    .local v35, "labelConstraints":J
    :cond_12
    nop

    .line 1020
    .end local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v16    # "$i$f$fastForEach":I
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 697
    sget-object v0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$minIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$minIntrinsicHeight$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

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

    .line 715
    sget-object v0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->intrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result v0

    return v0
.end method
