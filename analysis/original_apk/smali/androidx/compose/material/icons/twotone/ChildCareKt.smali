.class public final Landroidx/compose/material/icons/twotone/ChildCareKt;
.super Ljava/lang/Object;
.source "ChildCare.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChildCare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChildCare.kt\nandroidx/compose/material/icons/twotone/ChildCareKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,127:1\n212#2,12:128\n233#2,18:141\n253#2:178\n233#2,18:179\n253#2:216\n233#2,18:217\n253#2:254\n233#2,18:255\n253#2:292\n174#3:140\n705#4,2:159\n717#4,2:161\n719#4,11:167\n705#4,2:197\n717#4,2:199\n719#4,11:205\n705#4,2:235\n717#4,2:237\n719#4,11:243\n705#4,2:273\n717#4,2:275\n719#4,11:281\n72#5,4:163\n72#5,4:201\n72#5,4:239\n72#5,4:277\n*S KotlinDebug\n*F\n+ 1 ChildCare.kt\nandroidx/compose/material/icons/twotone/ChildCareKt\n*L\n29#1:128,12\n30#1:141,18\n30#1:178\n67#1:179,18\n67#1:216\n73#1:217,18\n73#1:254\n79#1:255,18\n79#1:292\n29#1:140\n30#1:159,2\n30#1:161,2\n30#1:167,11\n67#1:197,2\n67#1:199,2\n67#1:205,11\n73#1:235,2\n73#1:237,2\n73#1:243,11\n79#1:273,2\n79#1:275,2\n79#1:281,11\n30#1:163,4\n67#1:201,4\n73#1:239,4\n79#1:277,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_childCare",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "ChildCare",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getChildCare",
        "(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;",
        "material-icons-extended_release"
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
.field private static _childCare:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getChildCare(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 52
    .param p0, "$this$ChildCare"    # Landroidx/compose/material/icons/Icons$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/ChildCareKt;->_childCare:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/twotone/ChildCareKt;->_childCare:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "TwoTone.ChildCare"

    .line 128
    .local v0, "name$iv":Ljava/lang/String;
    nop

    .line 130
    const/4 v13, 0x0

    .line 128
    .local v13, "autoMirror$iv":Z
    const/4 v14, 0x0

    .line 139
    .local v14, "$i$f$materialIcon":I
    nop

    .line 132
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 133
    nop

    .line 134
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 140
    .local v2, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 135
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 140
    .restart local v2    # "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 136
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 137
    const/high16 v6, 0x41c00000    # 24.0f

    .line 132
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 138
    nop

    .line 132
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v15

    move-object v2, v0

    move v10, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 139
    nop

    .local v1, "$this$_get_ChildCare__u24lambda_u244":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v2, 0x0

    .line 30
    .local v2, "$i$a$-materialIcon$default-ChildCareKt$ChildCare$1":I
    const v3, 0x3e99999a    # 0.3f

    .local v3, "fillAlpha$iv":F
    move/from16 v20, v3

    const v22, 0x3e99999a    # 0.3f

    .local v22, "strokeAlpha$iv":F
    move-object v4, v1

    .line 141
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 144
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v17, v5

    .line 141
    const/4 v6, 0x0

    .line 150
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 151
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v7

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 153
    nop

    .line 155
    nop

    .line 156
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 157
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 158
    nop

    .line 150
    move-object/from16 v21, v10

    .local v19, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v21, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v15, v4

    .local v15, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v23, v7

    .local v23, "strokeLineWidth$iv$iv":F
    .local v24, "strokeLineCap$iv$iv":I
    move/from16 v26, v7

    .line 159
    .local v25, "strokeLineJoin$iv$iv":I
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 160
    const-string v8, ""

    .local v8, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v8

    .line 159
    const/4 v9, 0x0

    .line 161
    .local v9, "$i$f$path-R_LF-3I":I
    nop

    .line 162
    const/4 v11, 0x0

    .line 163
    .local v11, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v16, 0x0

    .line 164
    .local v16, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v34, v12

    .local v34, "$this$_get_ChildCare__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v35, 0x0

    .line 31
    .local v35, "$i$a$-materialPath-YwgOQQI$default-ChildCareKt$ChildCare$1$1":I
    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v10, 0x41980000    # 19.0f

    move-object/from16 v42, v0

    move-object/from16 v0, v34

    .end local v34    # "$this$_get_ChildCare__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_ChildCare__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v42, "name$iv":Ljava/lang/String;
    invoke-virtual {v0, v10, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v28, -0x42333333    # -0.1f

    const/16 v29, 0x0

    const v30, -0x41bd70a4    # -0.19f

    const v31, 0x3ca3d70a    # 0.02f

    const v32, -0x416b851f    # -0.29f

    const v33, 0x3cf5c28f    # 0.03f

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v28, -0x41b33333    # -0.2f

    const v29, -0x40d47ae1    # -0.67f

    const v30, -0x41051eb8    # -0.49f

    const v31, -0x405ae148    # -1.29f

    const v32, -0x40a3d70a    # -0.86f

    const v33, -0x4011eb85    # -1.86f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v28, 0x4184cccd    # 16.6f

    const v29, 0x40c851ec    # 6.26f

    const v30, 0x41673333    # 14.45f

    const/high16 v31, 0x40a00000    # 5.0f

    const/high16 v32, 0x41400000    # 12.0f

    const/high16 v33, 0x40a00000    # 5.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v7, 0x40c4cccd    # 6.15f

    const v10, 0x4102b852    # 8.17f

    move/from16 v43, v2

    .end local v2    # "$i$a$-materialIcon$default-ChildCareKt$ChildCare$1":I
    .local v43, "$i$a$-materialIcon$default-ChildCareKt$ChildCare$1":I
    const v2, 0x40eccccd    # 7.4f

    move/from16 v34, v3

    .end local v3    # "fillAlpha$iv":F
    .local v34, "fillAlpha$iv":F
    const v3, 0x40c851ec    # 6.26f

    invoke-virtual {v0, v2, v3, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v28, -0x41428f5c    # -0.37f

    const v29, 0x3f11eb85    # 0.57f

    const v30, -0x40d70a3d    # -0.66f

    const v31, 0x3f9851ec    # 1.19f

    const v32, -0x40a3d70a    # -0.86f

    const v33, 0x3fee147b    # 1.86f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const v28, -0x42333333    # -0.1f

    const v29, -0x43dc28f6    # -0.01f

    const v30, -0x41bd70a4    # -0.19f

    const v31, -0x430a3d71    # -0.03f

    const v32, -0x416b851f    # -0.29f

    const v33, -0x430a3d71    # -0.03f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v28, -0x40733333    # -1.1f

    const/16 v29, 0x0

    const/high16 v30, -0x40000000    # -2.0f

    const v31, 0x3f666666    # 0.9f

    const/high16 v32, -0x40000000    # -2.0f

    const/high16 v33, 0x40000000    # 2.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v2, v3, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v28, 0x3dcccccd    # 0.1f

    const v30, 0x3e428f5c    # 0.19f

    const v31, -0x435c28f6    # -0.02f

    const v32, 0x3e947ae1    # 0.29f

    const v33, -0x430a3d71    # -0.03f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v28, 0x3e4ccccd    # 0.2f

    const v29, 0x3f2b851f    # 0.67f

    const v30, 0x3efae148    # 0.49f

    const v31, 0x3fa51eb8    # 1.29f

    const v32, 0x3f5c28f6    # 0.86f

    const v33, 0x3fee147b    # 1.86f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v28, 0x40eccccd    # 7.4f

    const v29, 0x418deb85    # 17.74f

    const v30, 0x4118cccd    # 9.55f

    const/high16 v31, 0x41980000    # 19.0f

    const/high16 v32, 0x41400000    # 12.0f

    const/high16 v33, 0x41980000    # 19.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v7, 0x40933333    # 4.6f

    const v10, -0x405eb852    # -1.26f

    const v2, 0x40bb3333    # 5.85f

    const v3, -0x3fb51eb8    # -3.17f

    invoke-virtual {v0, v7, v10, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v28, 0x3ebd70a4    # 0.37f

    const v29, -0x40ee147b    # -0.57f

    const v30, 0x3f28f5c3    # 0.66f

    const v31, -0x4067ae14    # -1.19f

    const v32, 0x3f5c28f6    # 0.86f

    const v33, -0x4011eb85    # -1.86f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v28, 0x3dcccccd    # 0.1f

    const v29, 0x3c23d70a    # 0.01f

    const v30, 0x3e428f5c    # 0.19f

    const v31, 0x3cf5c28f    # 0.03f

    const v32, 0x3e947ae1    # 0.29f

    const v33, 0x3cf5c28f    # 0.03f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v28, 0x3f8ccccd    # 1.1f

    const/16 v29, 0x0

    const/high16 v30, 0x40000000    # 2.0f

    const v31, -0x4099999a    # -0.9f

    const/high16 v32, 0x40000000    # 2.0f

    const/high16 v33, -0x40000000    # -2.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v2, -0x4099999a    # -0.9f

    const/high16 v7, -0x40000000    # -2.0f

    invoke-virtual {v0, v2, v7, v7, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const/high16 v2, 0x41680000    # 14.5f

    const/high16 v7, 0x41140000    # 9.25f

    invoke-virtual {v0, v2, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v28, 0x3f30a3d7    # 0.69f

    const/high16 v30, 0x3fa00000    # 1.25f

    const v31, 0x3f0f5c29    # 0.56f

    const/high16 v32, 0x3fa00000    # 1.25f

    const/high16 v33, 0x3fa00000    # 1.25f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v3, -0x40f0a3d7    # -0.56f

    const/high16 v10, 0x3fa00000    # 1.25f

    const/high16 v2, -0x40600000    # -1.25f

    invoke-virtual {v0, v3, v10, v2, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    invoke-virtual {v0, v2, v3, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v3, 0x3f0f5c29    # 0.56f

    invoke-virtual {v0, v3, v2, v10, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const/high16 v3, 0x41180000    # 9.5f

    invoke-virtual {v0, v3, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v7, -0x40f0a3d7    # -0.56f

    invoke-virtual {v0, v7, v10, v2, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    invoke-virtual {v0, v2, v7, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v7, 0x3f0f5c29    # 0.56f

    invoke-virtual {v0, v7, v2, v10, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const/high16 v7, 0x41400000    # 12.0f

    const/high16 v10, 0x41880000    # 17.0f

    invoke-virtual {v0, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v28, -0x3fff5c29    # -2.01f

    const v30, -0x3f90a3d7    # -3.74f

    const v31, -0x40628f5c    # -1.23f

    const/high16 v32, -0x3f700000    # -4.5f

    const/high16 v33, -0x3fc00000    # -3.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const/high16 v7, 0x41100000    # 9.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v28, -0x40bd70a4    # -0.76f

    const v29, 0x3fe28f5c    # 1.77f

    const v30, -0x3fe0a3d7    # -2.49f

    const/high16 v31, 0x40400000    # 3.0f

    const/high16 v33, 0x40400000    # 3.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    nop

    .line 164
    .end local v0    # "$this$_get_ChildCare__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v35    # "$i$a$-materialPath-YwgOQQI$default-ChildCareKt$ChildCare$1$1":I
    nop

    .line 165
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 163
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v16    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 166
    nop

    .line 167
    .end local v11    # "$i$f$PathData":I
    nop

    .line 168
    nop

    .line 169
    nop

    .line 170
    nop

    .line 171
    nop

    .line 172
    nop

    .line 173
    nop

    .line 174
    nop

    .line 175
    nop

    .line 176
    nop

    .line 161
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 177
    nop

    .line 178
    .end local v8    # "name$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$path-R_LF-3I":I
    .end local v15    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v19    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v21    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v23    # "strokeLineWidth$iv$iv":F
    .end local v24    # "strokeLineCap$iv$iv":I
    .end local v25    # "strokeLineJoin$iv$iv":I
    .end local v26    # "strokeLineMiter$iv$iv":F
    nop

    .line 67
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v22    # "strokeAlpha$iv":F
    .end local v34    # "fillAlpha$iv":F
    move-object v0, v1

    .line 179
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 180
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "fillAlpha$iv":F
    move/from16 v28, v4

    .line 179
    nop

    .line 181
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "strokeAlpha$iv":F
    move/from16 v30, v5

    .line 179
    nop

    .line 182
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .local v6, "pathFillType$iv":I
    move/from16 v25, v6

    .line 179
    const/4 v7, 0x0

    .line 188
    .local v7, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 189
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v11

    const/4 v9, 0x0

    invoke-direct {v8, v11, v12, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v8

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 191
    nop

    .line 193
    nop

    .line 194
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 195
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 196
    nop

    .line 188
    const/4 v8, 0x0

    move-object/from16 v29, v8

    .local v27, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v29, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v0

    const/high16 v8, 0x3f800000    # 1.0f

    .local v23, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v8

    .local v31, "strokeLineWidth$iv$iv":F
    .local v32, "strokeLineCap$iv$iv":I
    move/from16 v34, v8

    .line 197
    .local v33, "strokeLineJoin$iv$iv":I
    .local v34, "strokeLineMiter$iv$iv":F
    nop

    .line 198
    const-string v8, ""

    .restart local v8    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v8

    .line 197
    const/4 v9, 0x0

    .line 199
    .restart local v9    # "$i$f$path-R_LF-3I":I
    nop

    .line 200
    const/4 v11, 0x0

    .line 201
    .restart local v11    # "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v15, 0x0

    .line 202
    .local v15, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v16, v12

    .local v16, "$this$_get_ChildCare__u24lambda_u244_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v17, 0x0

    .line 68
    .local v17, "$i$a$-materialPath-YwgOQQI$default-ChildCareKt$ChildCare$1$2":I
    const/high16 v10, 0x41280000    # 10.5f

    move-object/from16 v3, v16

    const/high16 v2, 0x41680000    # 14.5f

    .end local v16    # "$this$_get_ChildCare__u24lambda_u244_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v3, "$this$_get_ChildCare__u24lambda_u244_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v3, v2, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const/4 v2, 0x0

    const/high16 v10, -0x40600000    # -1.25f

    invoke-virtual {v3, v10, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const/high16 v45, 0x3fa00000    # 1.25f

    const/high16 v46, 0x3fa00000    # 1.25f

    const/16 v47, 0x0

    const/16 v48, 0x1

    const/16 v49, 0x1

    const/high16 v50, 0x40200000    # 2.5f

    const/16 v51, 0x0

    move-object/from16 v44, v3

    invoke-virtual/range {v44 .. v51}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const/high16 v50, -0x3fe00000    # -2.5f

    invoke-virtual/range {v44 .. v51}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    nop

    .line 202
    .end local v3    # "$this$_get_ChildCare__u24lambda_u244_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v17    # "$i$a$-materialPath-YwgOQQI$default-ChildCareKt$ChildCare$1$2":I
    nop

    .line 203
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 201
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v15    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 204
    nop

    .line 205
    .end local v11    # "$i$f$PathData":I
    nop

    .line 206
    nop

    .line 207
    nop

    .line 208
    nop

    .line 209
    nop

    .line 210
    nop

    .line 211
    nop

    .line 212
    nop

    .line 213
    nop

    .line 214
    nop

    .line 199
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 215
    nop

    .line 216
    .end local v8    # "name$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 73
    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v4    # "fillAlpha$iv":F
    .end local v5    # "strokeAlpha$iv":F
    .end local v6    # "pathFillType$iv":I
    .end local v7    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 217
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 218
    const/high16 v3, 0x3f800000    # 1.0f

    .local v3, "fillAlpha$iv":F
    move/from16 v28, v3

    .line 217
    nop

    .line 219
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "strokeAlpha$iv":F
    move/from16 v30, v4

    .line 217
    nop

    .line 220
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v25, v5

    .line 217
    const/4 v6, 0x0

    .line 226
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 227
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v7

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 229
    nop

    .line 231
    nop

    .line 232
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 233
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 234
    nop

    .line 226
    const/4 v7, 0x0

    move-object/from16 v29, v7

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    const/high16 v7, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v7

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v7

    .line 235
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 236
    const-string v7, ""

    .local v7, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v7

    .line 235
    const/4 v8, 0x0

    .line 237
    .local v8, "$i$f$path-R_LF-3I":I
    nop

    .line 238
    const/4 v9, 0x0

    .line 239
    .local v9, "$i$f$PathData":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v10, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 240
    .local v11, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v10

    .local v12, "$this$_get_ChildCare__u24lambda_u244_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v15, 0x0

    .line 74
    .local v15, "$i$a$-materialPath-YwgOQQI$default-ChildCareKt$ChildCare$1$3":I
    move-object/from16 v19, v0

    const/high16 v0, 0x41180000    # 9.5f

    const/high16 v2, 0x41280000    # 10.5f

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v19, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v12, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const/4 v0, 0x0

    const/high16 v2, -0x40600000    # -1.25f

    invoke-virtual {v12, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const/high16 v50, 0x40200000    # 2.5f

    move-object/from16 v44, v12

    invoke-virtual/range {v44 .. v51}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const/high16 v50, -0x3fe00000    # -2.5f

    invoke-virtual/range {v44 .. v51}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    nop

    .line 240
    .end local v12    # "$this$_get_ChildCare__u24lambda_u244_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v15    # "$i$a$-materialPath-YwgOQQI$default-ChildCareKt$ChildCare$1$3":I
    nop

    .line 241
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 239
    .end local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 242
    nop

    .line 243
    .end local v9    # "$i$f$PathData":I
    nop

    .line 244
    nop

    .line 245
    nop

    .line 246
    nop

    .line 247
    nop

    .line 248
    nop

    .line 249
    nop

    .line 250
    nop

    .line 251
    nop

    .line 252
    nop

    .line 237
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 253
    nop

    .line 254
    .end local v7    # "name$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 79
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "strokeAlpha$iv":F
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v19    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object v0, v1

    .line 255
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 256
    const/high16 v2, 0x3f800000    # 1.0f

    .local v2, "fillAlpha$iv":F
    move/from16 v28, v2

    .line 255
    nop

    .line 257
    const/high16 v3, 0x3f800000    # 1.0f

    .local v3, "strokeAlpha$iv":F
    move/from16 v30, v3

    .line 255
    nop

    .line 258
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .local v4, "pathFillType$iv":I
    move/from16 v25, v4

    .line 255
    const/4 v5, 0x0

    .line 264
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 265
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 267
    nop

    .line 269
    nop

    .line 270
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 271
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 272
    nop

    .line 264
    const/4 v6, 0x0

    move-object/from16 v29, v6

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v0

    const/high16 v6, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v6

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v6

    .line 273
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 274
    const-string v6, ""

    .local v6, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 273
    const/4 v7, 0x0

    .line 275
    .local v7, "$i$f$path-R_LF-3I":I
    nop

    .line 276
    const/4 v8, 0x0

    .line 277
    .local v8, "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v9, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v10, 0x0

    .line 278
    .local v10, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v9

    .local v11, "$this$_get_ChildCare__u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 80
    .local v12, "$i$a$-materialPath-YwgOQQI$default-ChildCareKt$ChildCare$1$4":I
    move-object/from16 v16, v0

    const/high16 v0, 0x41400000    # 12.0f

    const/high16 v15, 0x41880000    # 17.0f

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v16, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v36, 0x4000a3d7    # 2.01f

    const v38, 0x406f5c29    # 3.74f

    const v39, -0x40628f5c    # -1.23f

    const/high16 v40, 0x40900000    # 4.5f

    const/high16 v41, -0x3fc00000    # -3.0f

    move-object/from16 v35, v11

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const/high16 v0, -0x3ef00000    # -9.0f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v36, 0x3f428f5c    # 0.76f

    const v37, 0x3fe28f5c    # 1.77f

    const v38, 0x401f5c29    # 2.49f

    const/high16 v39, 0x40400000    # 3.0f

    const/high16 v41, 0x40400000    # 3.0f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v0, 0x41b7851f    # 22.94f

    const v15, 0x413570a4    # 11.34f

    invoke-virtual {v11, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const/high16 v36, -0x41800000    # -0.25f

    const v37, -0x403eb852    # -1.51f

    const v38, -0x4051eb85    # -1.36f

    const v39, -0x3fd0a3d7    # -2.74f

    const v40, -0x3fcc28f6    # -2.81f

    const v41, -0x3fb51eb8    # -3.17f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const v36, -0x40f851ec    # -0.53f

    const v37, -0x4070a3d7    # -1.12f

    const v38, -0x405c28f6    # -1.28f

    const v39, -0x3ff9999a    # -2.1f

    const v40, -0x3ff3d70a    # -2.19f

    const v41, -0x3fc5c28f    # -2.91f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v36, 0x4182e148    # 16.36f

    const v37, 0x40766666    # 3.85f

    const v38, 0x41647ae1    # 14.28f

    const/high16 v39, 0x40400000    # 3.0f

    const/high16 v40, 0x41400000    # 12.0f

    const/high16 v41, 0x40400000    # 3.0f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v0, -0x3f41eb85    # -5.94f

    const v15, 0x4010a3d7    # 2.26f

    move-object/from16 v17, v1

    .end local v1    # "$this$_get_ChildCare__u24lambda_u244":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v17, "$this$_get_ChildCare__u24lambda_u244":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v1, -0x3f747ae1    # -4.36f

    move/from16 v18, v2

    .end local v2    # "fillAlpha$iv":F
    .local v18, "fillAlpha$iv":F
    const v2, 0x3f59999a    # 0.85f

    invoke-virtual {v11, v1, v2, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const v36, -0x40947ae1    # -0.92f

    const v37, 0x3f4f5c29    # 0.81f

    const v38, -0x402a3d71    # -1.67f

    const v39, 0x3fe66666    # 1.8f

    const v40, -0x3ff3d70a    # -2.19f

    const v41, 0x403a3d71    # 2.91f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const v36, -0x40466666    # -1.45f

    const v37, 0x3edc28f6    # 0.43f

    const v38, -0x3fdc28f6    # -2.56f

    const v39, 0x3fd33333    # 1.65f

    const v40, -0x3fcc28f6    # -2.81f

    const v41, 0x404ae148    # 3.17f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const v36, -0x42dc28f6    # -0.04f

    const v37, 0x3e570a3d    # 0.21f

    const v38, -0x428a3d71    # -0.06f

    const v39, 0x3edc28f6    # 0.43f

    const v40, -0x428a3d71    # -0.06f

    const v41, 0x3f28f5c3    # 0.66f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const/16 v36, 0x0

    const v37, 0x3e6b851f    # 0.23f

    const v38, 0x3ca3d70a    # 0.02f

    const v39, 0x3ee66666    # 0.45f

    const v40, 0x3d75c28f    # 0.06f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const/high16 v36, 0x3e800000    # 0.25f

    const v37, 0x3fc147ae    # 1.51f

    const v38, 0x3fae147b    # 1.36f

    const v39, 0x402f5c29    # 2.74f

    const v40, 0x4033d70a    # 2.81f

    const v41, 0x404ae148    # 3.17f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v36, 0x3f051eb8    # 0.52f

    const v37, 0x3f8e147b    # 1.11f

    const v38, 0x3fa28f5c    # 1.27f

    const v39, 0x4005c28f    # 2.09f

    const v40, 0x400ae148    # 2.17f

    const v41, 0x4038f5c3    # 2.89f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const v36, 0x40f3d70a    # 7.62f

    const v37, 0x41a11eb8    # 20.14f

    const v38, 0x411b5c29    # 9.71f

    const/high16 v39, 0x41a80000    # 21.0f

    const/high16 v40, 0x41400000    # 12.0f

    const/high16 v41, 0x41a80000    # 21.0f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const v0, 0x40bf0a3d    # 5.97f

    const v1, -0x3fee147b    # -2.28f

    const v2, 0x408c28f6    # 4.38f

    const v15, -0x40a3d70a    # -0.86f

    invoke-virtual {v11, v2, v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const v36, 0x3f666666    # 0.9f

    const v37, -0x40b33333    # -0.8f

    const v38, 0x3fd33333    # 1.65f

    const v39, -0x401ae148    # -1.79f

    const v40, 0x400ae148    # 2.17f

    const v41, -0x3fc70a3d    # -2.89f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const v36, 0x3fb851ec    # 1.44f

    const v37, -0x4123d70a    # -0.43f

    const v38, 0x40233333    # 2.55f

    const v39, -0x402ccccd    # -1.65f

    const v40, 0x40333333    # 2.8f

    const v41, -0x3fb51eb8    # -3.17f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const v36, 0x3d23d70a    # 0.04f

    const v37, -0x41a8f5c3    # -0.21f

    const v38, 0x3d75c28f    # 0.06f

    const v39, -0x4123d70a    # -0.43f

    const v40, 0x3d75c28f    # 0.06f

    const v41, -0x40d70a3d    # -0.66f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const/16 v36, 0x0

    const v37, -0x41947ae1    # -0.23f

    const v38, -0x435c28f6    # -0.02f

    const v39, -0x4119999a    # -0.45f

    const v40, -0x428a3d71    # -0.06f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    const/high16 v0, 0x41600000    # 14.0f

    const/high16 v1, 0x41980000    # 19.0f

    invoke-virtual {v11, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    const v36, -0x42333333    # -0.1f

    const/16 v37, 0x0

    const v38, -0x41bd70a4    # -0.19f

    const v39, -0x435c28f6    # -0.02f

    const v40, -0x416b851f    # -0.29f

    const v41, -0x430a3d71    # -0.03f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    const v36, -0x41b33333    # -0.2f

    const v37, 0x3f2b851f    # 0.67f

    const v38, -0x41051eb8    # -0.49f

    const v39, 0x3fa51eb8    # 1.29f

    const v40, -0x40a3d70a    # -0.86f

    const v41, 0x3fee147b    # 1.86f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    const v36, 0x4184cccd    # 16.6f

    const v37, 0x418deb85    # 17.74f

    const v38, 0x41673333    # 14.45f

    const/high16 v39, 0x41980000    # 19.0f

    const/high16 v40, 0x41400000    # 12.0f

    const/high16 v41, 0x41980000    # 19.0f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    const v0, -0x3f6ccccd    # -4.6f

    const v1, -0x3f44cccd    # -5.85f

    const v2, -0x3fb51eb8    # -3.17f

    const v15, -0x405eb852    # -1.26f

    invoke-virtual {v11, v0, v15, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    const v36, -0x41428f5c    # -0.37f

    const v37, -0x40ee147b    # -0.57f

    const v38, -0x40d70a3d    # -0.66f

    const v39, -0x4067ae14    # -1.19f

    const v40, -0x40a3d70a    # -0.86f

    const v41, -0x4011eb85    # -1.86f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    const v36, -0x42333333    # -0.1f

    const v37, 0x3c23d70a    # 0.01f

    const v38, -0x41bd70a4    # -0.19f

    const v39, 0x3cf5c28f    # 0.03f

    const v40, -0x416b851f    # -0.29f

    const v41, 0x3cf5c28f    # 0.03f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    const v36, -0x40733333    # -1.1f

    const/16 v37, 0x0

    const/high16 v38, -0x40000000    # -2.0f

    const v39, -0x4099999a    # -0.9f

    const/high16 v40, -0x40000000    # -2.0f

    const/high16 v41, -0x40000000    # -2.0f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    const v0, 0x3f666666    # 0.9f

    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v11, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    const v36, 0x3dcccccd    # 0.1f

    const v38, 0x3e428f5c    # 0.19f

    const v39, 0x3ca3d70a    # 0.02f

    const v40, 0x3e947ae1    # 0.29f

    const v41, 0x3cf5c28f    # 0.03f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    const v36, 0x3e4ccccd    # 0.2f

    const v37, -0x40d47ae1    # -0.67f

    const v38, 0x3efae148    # 0.49f

    const v39, -0x405ae148    # -1.29f

    const v40, 0x3f5c28f6    # 0.86f

    const v41, -0x4011eb85    # -1.86f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    const v36, 0x40eccccd    # 7.4f

    const v37, 0x40c851ec    # 6.26f

    const v38, 0x4118cccd    # 9.55f

    const/high16 v39, 0x40a00000    # 5.0f

    const/high16 v40, 0x41400000    # 12.0f

    const/high16 v41, 0x40a00000    # 5.0f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    const v0, 0x3fa147ae    # 1.26f

    const v1, 0x404ae148    # 3.17f

    const v2, 0x40bb3333    # 5.85f

    const v15, 0x40933333    # 4.6f

    invoke-virtual {v11, v15, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    const v36, 0x3ebd70a4    # 0.37f

    const v37, 0x3f11eb85    # 0.57f

    const v38, 0x3f28f5c3    # 0.66f

    const v39, 0x3f9851ec    # 1.19f

    const v40, 0x3f5c28f6    # 0.86f

    const v41, 0x3fee147b    # 1.86f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    const v36, 0x3dcccccd    # 0.1f

    const v37, -0x43dc28f6    # -0.01f

    const v38, 0x3e428f5c    # 0.19f

    const v39, -0x430a3d71    # -0.03f

    const v40, 0x3e947ae1    # 0.29f

    const v41, -0x430a3d71    # -0.03f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    const v36, 0x3f8ccccd    # 1.1f

    const/16 v37, 0x0

    const/high16 v38, 0x40000000    # 2.0f

    const v39, 0x3f666666    # 0.9f

    const/high16 v40, 0x40000000    # 2.0f

    const/high16 v41, 0x40000000    # 2.0f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 119
    const v0, -0x4099999a    # -0.9f

    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v11, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 121
    nop

    .line 278
    .end local v11    # "$this$_get_ChildCare__u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-materialPath-YwgOQQI$default-ChildCareKt$ChildCare$1$4":I
    nop

    .line 279
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 277
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 280
    nop

    .line 281
    .end local v8    # "$i$f$PathData":I
    nop

    .line 282
    nop

    .line 283
    nop

    .line 284
    nop

    .line 285
    nop

    .line 286
    nop

    .line 287
    nop

    .line 288
    nop

    .line 289
    nop

    .line 290
    nop

    .line 275
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 291
    nop

    .line 292
    .end local v6    # "name$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 79
    .end local v3    # "strokeAlpha$iv":F
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v16    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v18    # "fillAlpha$iv":F
    nop

    .line 139
    .end local v17    # "$this$_get_ChildCare__u24lambda_u244":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v43    # "$i$a$-materialIcon$default-ChildCareKt$ChildCare$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v13    # "autoMirror$iv":Z
    .end local v14    # "$i$f$materialIcon":I
    .end local v42    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/twotone/ChildCareKt;->_childCare:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 123
    sget-object v0, Landroidx/compose/material/icons/twotone/ChildCareKt;->_childCare:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
