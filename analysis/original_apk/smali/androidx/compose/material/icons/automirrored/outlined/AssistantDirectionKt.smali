.class public final Landroidx/compose/material/icons/automirrored/outlined/AssistantDirectionKt;
.super Ljava/lang/Object;
.source "AssistantDirection.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssistantDirection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssistantDirection.kt\nandroidx/compose/material/icons/automirrored/outlined/AssistantDirectionKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,76:1\n223#2:77\n216#2,3:78\n219#2,4:82\n233#2,18:86\n253#2:123\n233#2,18:124\n253#2:161\n174#3:81\n705#4,2:104\n717#4,2:106\n719#4,11:112\n705#4,2:142\n717#4,2:144\n719#4,11:150\n72#5,4:108\n72#5,4:146\n*S KotlinDebug\n*F\n+ 1 AssistantDirection.kt\nandroidx/compose/material/icons/automirrored/outlined/AssistantDirectionKt\n*L\n29#1:77\n29#1:78,3\n29#1:82,4\n31#1:86,18\n31#1:123\n45#1:124,18\n45#1:161\n29#1:81\n31#1:104,2\n31#1:106,2\n31#1:112,11\n45#1:142,2\n45#1:144,2\n45#1:150,11\n31#1:108,4\n45#1:146,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_assistantDirection",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "AssistantDirection",
        "Landroidx/compose/material/icons/Icons$AutoMirrored$Outlined;",
        "getAssistantDirection",
        "(Landroidx/compose/material/icons/Icons$AutoMirrored$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;",
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
.field private static _assistantDirection:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getAssistantDirection(Landroidx/compose/material/icons/Icons$AutoMirrored$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 46
    .param p0, "$this$AssistantDirection"    # Landroidx/compose/material/icons/Icons$AutoMirrored$Outlined;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/automirrored/outlined/AssistantDirectionKt;->_assistantDirection:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/automirrored/outlined/AssistantDirectionKt;->_assistantDirection:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    nop

    .line 30
    nop

    .line 29
    const/4 v10, 0x1

    .local v10, "autoMirror$iv":Z
    const-string v2, "AutoMirrored.Outlined.AssistantDirection"

    .local v2, "name$iv":Ljava/lang/String;
    const/4 v0, 0x0

    .line 77
    .local v0, "$i$f$materialIcon":I
    nop

    .line 78
    new-instance v13, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 79
    nop

    .line 80
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 81
    .local v3, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 82
    .end local v1    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 81
    .local v4, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 83
    .end local v1    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 84
    const/high16 v6, 0x41c00000    # 24.0f

    .line 78
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 85
    nop

    .line 78
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 77
    nop

    .local v1, "$this$_get_AssistantDirection__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 31
    .local v3, "$i$a$-materialIcon-AssistantDirectionKt$AssistantDirection$1":I
    move-object v4, v1

    .line 86
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 87
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "fillAlpha$iv":F
    move/from16 v16, v5

    .line 86
    nop

    .line 88
    const/high16 v6, 0x3f800000    # 1.0f

    .local v6, "strokeAlpha$iv":F
    move/from16 v18, v6

    .line 86
    nop

    .line 89
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v7

    .local v7, "pathFillType$iv":I
    move v13, v7

    .line 86
    const/4 v8, 0x0

    .line 95
    .local v8, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 96
    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v11

    const/4 v14, 0x0

    invoke-direct {v9, v11, v12, v14}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v9

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 98
    nop

    .line 100
    nop

    .line 101
    sget-object v9, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 102
    sget-object v9, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 103
    nop

    .line 95
    move-object/from16 v17, v14

    .local v15, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v17, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v4

    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v9, 0x3f800000    # 1.0f

    move/from16 v19, v9

    .local v19, "strokeLineWidth$iv$iv":F
    .local v20, "strokeLineCap$iv$iv":I
    move/from16 v22, v9

    .line 104
    .local v21, "strokeLineJoin$iv$iv":I
    .local v22, "strokeLineMiter$iv$iv":F
    nop

    .line 105
    const-string v28, ""

    move-object v12, v14

    .local v28, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v14, v28

    .line 104
    const/16 v29, 0x0

    .line 106
    .local v29, "$i$f$path-R_LF-3I":I
    nop

    .line 107
    const/16 v23, 0x0

    .line 108
    .local v23, "$i$f$PathData":I
    new-instance v24, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct/range {v24 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v24, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v25, 0x0

    .line 109
    .local v25, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v26, v24

    .local v26, "$this$_get_AssistantDirection__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v27, 0x0

    .line 32
    .local v27, "$i$a$-materialPath-YwgOQQI$default-AssistantDirectionKt$AssistantDirection$1$1":I
    move/from16 v37, v0

    .end local v0    # "$i$f$materialIcon":I
    .local v37, "$i$f$materialIcon":I
    const/high16 v0, 0x41400000    # 12.0f

    move-object/from16 v12, v26

    .end local v26    # "$this$_get_AssistantDirection__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v12, "$this$_get_AssistantDirection__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v12, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v31, 0x40bccccd    # 5.9f

    const/high16 v32, 0x3f800000    # 1.0f

    const/high16 v33, 0x3f800000    # 1.0f

    const v34, 0x40bccccd    # 5.9f

    const/high16 v35, 0x3f800000    # 1.0f

    const/high16 v36, 0x41400000    # 12.0f

    move-object/from16 v30, v12

    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v0, 0x409ccccd    # 4.9f

    const/high16 v9, 0x41300000    # 11.0f

    invoke-virtual {v12, v0, v9, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v0, -0x3f633333    # -4.9f

    move-object/from16 v38, v2

    .end local v2    # "name$iv":Ljava/lang/String;
    .local v38, "name$iv":Ljava/lang/String;
    const/high16 v2, -0x3ed00000    # -11.0f

    invoke-virtual {v12, v9, v0, v9, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v0, 0x4190cccd    # 18.1f

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v12, v0, v9, v2, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const/high16 v0, 0x41a80000    # 21.0f

    invoke-virtual {v12, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v31, -0x3f6051ec    # -4.99f

    const/16 v32, 0x0

    const/high16 v33, -0x3ef00000    # -9.0f

    const v34, -0x3f7fae14    # -4.01f

    const/high16 v35, -0x3ef00000    # -9.0f

    const/high16 v36, -0x3ef00000    # -9.0f

    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v2, 0x408051ec    # 4.01f

    const/high16 v9, -0x3ef00000    # -9.0f

    const/high16 v0, 0x41100000    # 9.0f

    invoke-virtual {v12, v2, v9, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    invoke-virtual {v12, v0, v2, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v0, 0x4187eb85    # 16.99f

    const/high16 v2, 0x41a80000    # 21.0f

    const/high16 v9, 0x41400000    # 12.0f

    invoke-virtual {v12, v0, v2, v9, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    nop

    .line 109
    .end local v12    # "$this$_get_AssistantDirection__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v27    # "$i$a$-materialPath-YwgOQQI$default-AssistantDirectionKt$AssistantDirection$1$1":I
    nop

    .line 110
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    const/4 v0, 0x0

    .line 108
    .end local v24    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v25    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 111
    nop

    .line 112
    .end local v23    # "$i$f$PathData":I
    nop

    .line 113
    nop

    .line 114
    nop

    .line 115
    nop

    .line 116
    nop

    .line 117
    nop

    .line 118
    nop

    .line 119
    nop

    .line 120
    nop

    .line 121
    nop

    .line 106
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x3800

    const/16 v27, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 122
    nop

    .line 123
    .end local v11    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v15    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v17    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v19    # "strokeLineWidth$iv$iv":F
    .end local v20    # "strokeLineCap$iv$iv":I
    .end local v21    # "strokeLineJoin$iv$iv":I
    .end local v22    # "strokeLineMiter$iv$iv":F
    .end local v28    # "name$iv$iv":Ljava/lang/String;
    .end local v29    # "$i$f$path-R_LF-3I":I
    nop

    .line 45
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "fillAlpha$iv":F
    .end local v6    # "strokeAlpha$iv":F
    .end local v7    # "pathFillType$iv":I
    .end local v8    # "$i$f$materialPath-YwgOQQI":I
    move-object v2, v1

    .line 124
    .local v2, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 125
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "fillAlpha$iv":F
    move/from16 v24, v4

    .line 124
    nop

    .line 126
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "strokeAlpha$iv":F
    move/from16 v26, v5

    .line 124
    nop

    .line 127
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .local v6, "pathFillType$iv":I
    move/from16 v21, v6

    .line 124
    const/4 v7, 0x0

    .line 133
    .local v7, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 134
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v11

    invoke-direct {v8, v11, v12, v0}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v23, v8

    check-cast v23, Landroidx/compose/ui/graphics/Brush;

    .line 136
    nop

    .line 138
    nop

    .line 139
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v28

    .line 140
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v29

    .line 141
    nop

    .line 133
    move-object/from16 v25, v0

    .local v23, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v25, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v19, v2

    const/high16 v0, 0x3f800000    # 1.0f

    .local v19, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v27, v0

    .local v27, "strokeLineWidth$iv$iv":F
    .local v28, "strokeLineCap$iv$iv":I
    move/from16 v30, v0

    .line 142
    .local v29, "strokeLineJoin$iv$iv":I
    .local v30, "strokeLineMiter$iv$iv":F
    nop

    .line 143
    const-string v0, ""

    .local v0, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v22, v0

    .line 142
    const/4 v8, 0x0

    .line 144
    .local v8, "$i$f$path-R_LF-3I":I
    nop

    .line 145
    const/4 v9, 0x0

    .line 146
    .local v9, "$i$f$PathData":I
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v11, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 147
    .local v12, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v13, v11

    .local v13, "$this$_get_AssistantDirection__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v14, 0x0

    .line 46
    .local v14, "$i$a$-materialPath-YwgOQQI$default-AssistantDirectionKt$AssistantDirection$1$2":I
    const v15, 0x419dd70a    # 19.73f

    move-object/from16 v16, v0

    .end local v0    # "name$iv$iv":Ljava/lang/String;
    .local v16, "name$iv$iv":Ljava/lang/String;
    const v0, 0x4136b852    # 11.42f

    invoke-virtual {v13, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v15, 0x4148a3d7    # 12.54f

    const v0, 0x40866666    # 4.2f

    invoke-virtual {v13, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v40, -0x4147ae14    # -0.36f

    const v41, -0x4175c28f    # -0.27f

    const v42, -0x40b33333    # -0.8f

    const v43, -0x4175c28f    # -0.27f

    const v44, -0x406ccccd    # -1.15f

    const/16 v45, 0x0

    move-object/from16 v39, v13

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v15, 0x4136b852    # 11.42f

    invoke-virtual {v13, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v40, -0x4175c28f    # -0.27f

    const v41, 0x3eb851ec    # 0.36f

    const v42, -0x4175c28f    # -0.27f

    const v43, 0x3f4ccccd    # 0.8f

    const/16 v44, 0x0

    const v45, 0x3f947ae1    # 1.16f

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v0, 0x40e70a3d    # 7.22f

    const v15, 0x40e6147b    # 7.19f

    invoke-virtual {v13, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v40, 0x3eb851ec    # 0.36f

    const v41, 0x3e8a3d71    # 0.27f

    const v42, 0x3f4ccccd    # 0.8f

    const v43, 0x3e8a3d71    # 0.27f

    const v44, 0x3f933333    # 1.15f

    const/16 v45, 0x0

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v0, -0x3f18f5c3    # -7.22f

    invoke-virtual {v13, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v40, 0x41a0b852    # 20.09f

    const v41, 0x4143851f    # 12.22f

    const v42, 0x41a0b852    # 20.09f

    const v43, 0x413b0a3d    # 11.69f

    const v44, 0x419dd70a    # 19.73f

    const v45, 0x4136b852    # 11.42f

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const/high16 v0, 0x41580000    # 13.5f

    const/high16 v15, 0x41680000    # 14.5f

    invoke-virtual {v13, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v15, -0x404b851f    # -1.41f

    invoke-virtual {v13, v15, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v15, 0x4152b852    # 13.17f

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v13, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const/high16 v0, -0x3f800000    # -4.0f

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const/16 v40, 0x0

    const v41, -0x40e66666    # -0.6f

    const v42, 0x3ecccccd    # 0.4f

    const/high16 v43, -0x40800000    # -1.0f

    const/high16 v44, 0x3f800000    # 1.0f

    const/high16 v45, -0x40800000    # -1.0f

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v0, 0x408570a4    # 4.17f

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v0, -0x40747ae1    # -1.09f

    invoke-virtual {v13, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const/high16 v0, 0x40f00000    # 7.5f

    const/high16 v15, 0x41580000    # 13.5f

    invoke-virtual {v13, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const/high16 v0, 0x41880000    # 17.0f

    const/high16 v15, 0x41300000    # 11.0f

    invoke-virtual {v13, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const/high16 v0, 0x41680000    # 14.5f

    const/high16 v15, 0x41580000    # 13.5f

    invoke-virtual {v13, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    nop

    .line 147
    .end local v13    # "$this$_get_AssistantDirection__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v14    # "$i$a$-materialPath-YwgOQQI$default-AssistantDirectionKt$AssistantDirection$1$2":I
    nop

    .line 148
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v20

    .line 146
    .end local v11    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 149
    nop

    .line 150
    .end local v9    # "$i$f$PathData":I
    nop

    .line 151
    nop

    .line 152
    nop

    .line 153
    nop

    .line 154
    nop

    .line 155
    nop

    .line 156
    nop

    .line 157
    nop

    .line 158
    nop

    .line 159
    nop

    .line 144
    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x3800

    const/16 v35, 0x0

    invoke-static/range {v19 .. v35}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 160
    nop

    .line 161
    .end local v8    # "$i$f$path-R_LF-3I":I
    .end local v16    # "name$iv$iv":Ljava/lang/String;
    .end local v19    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v23    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v25    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v27    # "strokeLineWidth$iv$iv":F
    .end local v28    # "strokeLineCap$iv$iv":I
    .end local v29    # "strokeLineJoin$iv$iv":I
    .end local v30    # "strokeLineMiter$iv$iv":F
    nop

    .line 45
    .end local v2    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v4    # "fillAlpha$iv":F
    .end local v5    # "strokeAlpha$iv":F
    .end local v6    # "pathFillType$iv":I
    .end local v7    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 77
    .end local v1    # "$this$_get_AssistantDirection__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v3    # "$i$a$-materialIcon-AssistantDirectionKt$AssistantDirection$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v10    # "autoMirror$iv":Z
    .end local v37    # "$i$f$materialIcon":I
    .end local v38    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/automirrored/outlined/AssistantDirectionKt;->_assistantDirection:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 72
    sget-object v0, Landroidx/compose/material/icons/automirrored/outlined/AssistantDirectionKt;->_assistantDirection:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
