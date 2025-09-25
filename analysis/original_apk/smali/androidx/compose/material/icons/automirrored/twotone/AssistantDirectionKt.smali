.class public final Landroidx/compose/material/icons/automirrored/twotone/AssistantDirectionKt;
.super Ljava/lang/Object;
.source "AssistantDirection.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssistantDirection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssistantDirection.kt\nandroidx/compose/material/icons/automirrored/twotone/AssistantDirectionKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,92:1\n223#2:93\n216#2,3:94\n219#2,4:98\n233#2,18:102\n253#2:139\n233#2,18:140\n253#2:177\n233#2,18:178\n253#2:215\n174#3:97\n705#4,2:120\n717#4,2:122\n719#4,11:128\n705#4,2:158\n717#4,2:160\n719#4,11:166\n705#4,2:196\n717#4,2:198\n719#4,11:204\n72#5,4:124\n72#5,4:162\n72#5,4:200\n*S KotlinDebug\n*F\n+ 1 AssistantDirection.kt\nandroidx/compose/material/icons/automirrored/twotone/AssistantDirectionKt\n*L\n29#1:93\n29#1:94,3\n29#1:98,4\n31#1:102,18\n31#1:139\n49#1:140,18\n49#1:177\n63#1:178,18\n63#1:215\n29#1:97\n31#1:120,2\n31#1:122,2\n31#1:128,11\n49#1:158,2\n49#1:160,2\n49#1:166,11\n63#1:196,2\n63#1:198,2\n63#1:204,11\n31#1:124,4\n49#1:162,4\n63#1:200,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_assistantDirection",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "AssistantDirection",
        "Landroidx/compose/material/icons/Icons$AutoMirrored$TwoTone;",
        "getAssistantDirection",
        "(Landroidx/compose/material/icons/Icons$AutoMirrored$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;",
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

.method public static final getAssistantDirection(Landroidx/compose/material/icons/Icons$AutoMirrored$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 46
    .param p0, "$this$AssistantDirection"    # Landroidx/compose/material/icons/Icons$AutoMirrored$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/automirrored/twotone/AssistantDirectionKt;->_assistantDirection:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/automirrored/twotone/AssistantDirectionKt;->_assistantDirection:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "AutoMirrored.TwoTone.AssistantDirection"

    .local v2, "name$iv":Ljava/lang/String;
    const/4 v0, 0x0

    .line 93
    .local v0, "$i$f$materialIcon":I
    nop

    .line 94
    new-instance v13, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 95
    nop

    .line 96
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 97
    .local v3, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 98
    .end local v1    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 97
    .local v4, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 99
    .end local v1    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 100
    const/high16 v6, 0x41c00000    # 24.0f

    .line 94
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 101
    nop

    .line 94
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 93
    nop

    .local v1, "$this$_get_AssistantDirection__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 31
    .local v3, "$i$a$-materialIcon-AssistantDirectionKt$AssistantDirection$1":I
    const v4, 0x3e99999a    # 0.3f

    .local v4, "fillAlpha$iv":F
    move/from16 v16, v4

    const v18, 0x3e99999a    # 0.3f

    .local v18, "strokeAlpha$iv":F
    move-object v5, v1

    .line 102
    .local v5, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 105
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .local v6, "pathFillType$iv":I
    move v13, v6

    .line 102
    const/4 v7, 0x0

    .line 111
    .local v7, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 112
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v11

    const/4 v9, 0x0

    invoke-direct {v8, v11, v12, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v8

    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 114
    nop

    .line 116
    nop

    .line 117
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v20

    .line 118
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v21

    .line 119
    nop

    .line 111
    move-object/from16 v17, v9

    .local v15, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v17, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v11, v5

    .local v11, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v8, 0x3f800000    # 1.0f

    move/from16 v19, v8

    .local v19, "strokeLineWidth$iv$iv":F
    .local v20, "strokeLineCap$iv$iv":I
    move/from16 v22, v8

    .line 120
    .local v21, "strokeLineJoin$iv$iv":I
    .local v22, "strokeLineMiter$iv$iv":F
    nop

    .line 121
    const-string v28, ""

    .local v28, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v14, v28

    .line 120
    const/16 v29, 0x0

    .line 122
    .local v29, "$i$f$path-R_LF-3I":I
    nop

    .line 123
    const/16 v23, 0x0

    .line 124
    .local v23, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v24, 0x0

    .line 125
    .local v24, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v25, v12

    .local v25, "$this$_get_AssistantDirection__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v26, 0x0

    .line 32
    .local v26, "$i$a$-materialPath-YwgOQQI$default-AssistantDirectionKt$AssistantDirection$1$1":I
    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x40400000    # 3.0f

    move/from16 v37, v0

    move-object/from16 v0, v25

    .end local v25    # "$this$_get_AssistantDirection__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_AssistantDirection__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v37, "$i$f$materialIcon":I
    invoke-virtual {v0, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v31, -0x3f6051ec    # -4.99f

    const/16 v32, 0x0

    const/high16 v33, -0x3ef00000    # -9.0f

    const v34, 0x408051ec    # 4.01f

    const/high16 v35, -0x3ef00000    # -9.0f

    const/high16 v36, 0x41100000    # 9.0f

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v8, 0x408051ec    # 4.01f

    const/high16 v9, 0x41100000    # 9.0f

    invoke-virtual {v0, v8, v9, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v8, -0x3f7fae14    # -4.01f

    move-object/from16 v38, v2

    .end local v2    # "name$iv":Ljava/lang/String;
    .local v38, "name$iv":Ljava/lang/String;
    const/high16 v2, -0x3ef00000    # -9.0f

    invoke-virtual {v0, v9, v8, v9, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v8, 0x4187eb85    # 16.99f

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v9, 0x41400000    # 12.0f

    invoke-virtual {v0, v8, v2, v9, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v2, 0x4148a3d7    # 12.54f

    const v9, 0x419e6666    # 19.8f

    invoke-virtual {v0, v2, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v31, -0x414ccccd    # -0.35f

    const v32, 0x3e8a3d71    # 0.27f

    const v33, -0x40b5c28f    # -0.79f

    const v34, 0x3e8a3d71    # 0.27f

    const v35, -0x406ccccd    # -1.15f

    const/16 v36, 0x0

    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v8, 0x414947ae    # 12.58f

    const v2, 0x40866666    # 4.2f

    invoke-virtual {v0, v2, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v31, -0x4175c28f    # -0.27f

    const v32, -0x4147ae14    # -0.36f

    const v33, -0x4175c28f    # -0.27f

    const v34, -0x40b33333    # -0.8f

    const/16 v35, 0x0

    const v36, -0x406b851f    # -1.16f

    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v8, 0x40e6147b    # 7.19f

    const v2, -0x3f18f5c3    # -7.22f

    invoke-virtual {v0, v8, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v31, 0x3eb33333    # 0.35f

    const v32, -0x4175c28f    # -0.27f

    const v33, 0x3f4a3d71    # 0.79f

    const v34, -0x4175c28f    # -0.27f

    const v35, 0x3f933333    # 1.15f

    const/16 v36, 0x0

    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v2, 0x40e70a3d    # 7.22f

    invoke-virtual {v0, v8, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v31, 0x3eb851ec    # 0.36f

    const v32, 0x3e8a3d71    # 0.27f

    const v33, 0x3eb851ec    # 0.36f

    const v34, 0x3f4ccccd    # 0.8f

    const/16 v35, 0x0

    const v36, 0x3f947ae1    # 1.16f

    invoke-virtual/range {v30 .. v36}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v2, 0x4148a3d7    # 12.54f

    invoke-virtual {v0, v2, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    nop

    .line 125
    .end local v0    # "$this$_get_AssistantDirection__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v26    # "$i$a$-materialPath-YwgOQQI$default-AssistantDirectionKt$AssistantDirection$1$1":I
    nop

    .line 126
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v12

    .line 124
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v24    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 127
    nop

    .line 128
    .end local v23    # "$i$f$PathData":I
    nop

    .line 129
    nop

    .line 130
    nop

    .line 131
    nop

    .line 132
    nop

    .line 133
    nop

    .line 134
    nop

    .line 135
    nop

    .line 136
    nop

    .line 137
    nop

    .line 122
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x3800

    const/16 v27, 0x0

    invoke-static/range {v11 .. v27}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 138
    nop

    .line 139
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

    .line 49
    .end local v4    # "fillAlpha$iv":F
    .end local v5    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v6    # "pathFillType$iv":I
    .end local v7    # "$i$f$materialPath-YwgOQQI":I
    .end local v18    # "strokeAlpha$iv":F
    move-object v0, v1

    .line 140
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 141
    const/high16 v2, 0x3f800000    # 1.0f

    .local v2, "fillAlpha$iv":F
    move/from16 v24, v2

    .line 140
    nop

    .line 142
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "strokeAlpha$iv":F
    move/from16 v26, v4

    .line 140
    nop

    .line 143
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v21, v5

    .line 140
    const/4 v6, 0x0

    .line 149
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 150
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v11

    const/4 v9, 0x0

    invoke-direct {v7, v11, v12, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v23, v7

    check-cast v23, Landroidx/compose/ui/graphics/Brush;

    .line 152
    nop

    .line 154
    nop

    .line 155
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v28

    .line 156
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v29

    .line 157
    nop

    .line 149
    const/4 v7, 0x0

    move-object/from16 v25, v7

    .local v23, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v25, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v19, v0

    const/high16 v7, 0x3f800000    # 1.0f

    .local v19, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v27, v7

    .local v27, "strokeLineWidth$iv$iv":F
    .local v28, "strokeLineCap$iv$iv":I
    move/from16 v30, v7

    .line 158
    .local v29, "strokeLineJoin$iv$iv":I
    .local v30, "strokeLineMiter$iv$iv":F
    nop

    .line 159
    const-string v7, ""

    .local v7, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v22, v7

    .line 158
    const/4 v9, 0x0

    .line 160
    .local v9, "$i$f$path-R_LF-3I":I
    nop

    .line 161
    const/4 v11, 0x0

    .line 162
    .local v11, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v13, 0x0

    .line 163
    .local v13, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v14, v12

    .local v14, "$this$_get_AssistantDirection__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v15, 0x0

    .line 50
    .local v15, "$i$a$-materialPath-YwgOQQI$default-AssistantDirectionKt$AssistantDirection$1$2":I
    move-object/from16 v17, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v8, 0x41400000    # 12.0f

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v17, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v14, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v40, 0x40bccccd    # 5.9f

    const/high16 v41, 0x3f800000    # 1.0f

    const/high16 v42, 0x3f800000    # 1.0f

    const v43, 0x40bccccd    # 5.9f

    const/high16 v44, 0x3f800000    # 1.0f

    const/high16 v45, 0x41400000    # 12.0f

    move-object/from16 v39, v14

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v0, 0x409ccccd    # 4.9f

    const/high16 v8, 0x41300000    # 11.0f

    invoke-virtual {v14, v0, v8, v8, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v0, -0x3f633333    # -4.9f

    move/from16 v18, v2

    .end local v2    # "fillAlpha$iv":F
    .local v18, "fillAlpha$iv":F
    const/high16 v2, -0x3ed00000    # -11.0f

    invoke-virtual {v14, v8, v0, v8, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v0, 0x4190cccd    # 18.1f

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v14, v0, v8, v2, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const/high16 v0, 0x41a80000    # 21.0f

    invoke-virtual {v14, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v40, -0x3f6051ec    # -4.99f

    const/16 v41, 0x0

    const/high16 v42, -0x3ef00000    # -9.0f

    const v43, -0x3f7fae14    # -4.01f

    const/high16 v44, -0x3ef00000    # -9.0f

    const/high16 v45, -0x3ef00000    # -9.0f

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const/high16 v0, 0x41100000    # 9.0f

    const/high16 v2, -0x3ef00000    # -9.0f

    const v8, 0x408051ec    # 4.01f

    invoke-virtual {v14, v8, v2, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    invoke-virtual {v14, v0, v8, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v0, 0x4187eb85    # 16.99f

    const/high16 v2, 0x41a80000    # 21.0f

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v14, v0, v2, v8, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    nop

    .line 163
    .end local v14    # "$this$_get_AssistantDirection__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v15    # "$i$a$-materialPath-YwgOQQI$default-AssistantDirectionKt$AssistantDirection$1$2":I
    nop

    .line 164
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v20

    .line 162
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v13    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 165
    nop

    .line 166
    .end local v11    # "$i$f$PathData":I
    nop

    .line 167
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

    .line 160
    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x3800

    const/16 v35, 0x0

    invoke-static/range {v19 .. v35}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 176
    nop

    .line 177
    .end local v7    # "name$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$path-R_LF-3I":I
    .end local v19    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v23    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v25    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v27    # "strokeLineWidth$iv$iv":F
    .end local v28    # "strokeLineCap$iv$iv":I
    .end local v29    # "strokeLineJoin$iv$iv":I
    .end local v30    # "strokeLineMiter$iv$iv":F
    nop

    .line 63
    .end local v4    # "strokeAlpha$iv":F
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v17    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v18    # "fillAlpha$iv":F
    move-object v0, v1

    .line 178
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 179
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "fillAlpha$iv":F
    move/from16 v24, v2

    .line 178
    nop

    .line 180
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "strokeAlpha$iv":F
    move/from16 v26, v4

    .line 178
    nop

    .line 181
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .restart local v5    # "pathFillType$iv":I
    move/from16 v21, v5

    .line 178
    const/4 v6, 0x0

    .line 187
    .restart local v6    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 188
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v23, v7

    check-cast v23, Landroidx/compose/ui/graphics/Brush;

    .line 190
    nop

    .line 192
    nop

    .line 193
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v28

    .line 194
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v29

    .line 195
    nop

    .line 187
    const/4 v7, 0x0

    move-object/from16 v25, v7

    .restart local v23    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v25    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v19, v0

    const/high16 v7, 0x3f800000    # 1.0f

    .restart local v19    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v27, v7

    .restart local v27    # "strokeLineWidth$iv$iv":F
    .restart local v28    # "strokeLineCap$iv$iv":I
    move/from16 v30, v7

    .line 196
    .restart local v29    # "strokeLineJoin$iv$iv":I
    .restart local v30    # "strokeLineMiter$iv$iv":F
    nop

    .line 197
    const-string v7, ""

    .restart local v7    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v22, v7

    .line 196
    const/4 v8, 0x0

    .line 198
    .local v8, "$i$f$path-R_LF-3I":I
    nop

    .line 199
    const/4 v9, 0x0

    .line 200
    .local v9, "$i$f$PathData":I
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v11, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 201
    .local v12, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v13, v11

    .local v13, "$this$_get_AssistantDirection__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v14, 0x0

    .line 64
    .local v14, "$i$a$-materialPath-YwgOQQI$default-AssistantDirectionKt$AssistantDirection$1$3":I
    const v15, 0x419dd70a    # 19.73f

    move-object/from16 v17, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v17    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x4136b852    # 11.42f

    invoke-virtual {v13, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v0, 0x4148a3d7    # 12.54f

    const v15, 0x40866666    # 4.2f

    invoke-virtual {v13, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const v40, -0x4147ae14    # -0.36f

    const v41, -0x4175c28f    # -0.27f

    const v42, -0x40b33333    # -0.8f

    const v43, -0x4175c28f    # -0.27f

    const v44, -0x406ccccd    # -1.15f

    const/16 v45, 0x0

    move-object/from16 v39, v13

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v0, 0x4136b852    # 11.42f

    const v15, 0x40866666    # 4.2f

    invoke-virtual {v13, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v40, -0x4175c28f    # -0.27f

    const v41, 0x3eb851ec    # 0.36f

    const v42, -0x4175c28f    # -0.27f

    const v43, 0x3f4ccccd    # 0.8f

    const/16 v44, 0x0

    const v45, 0x3f947ae1    # 1.16f

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v0, 0x40e70a3d    # 7.22f

    const v15, 0x40e6147b    # 7.19f

    invoke-virtual {v13, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const v40, 0x3eb851ec    # 0.36f

    const v41, 0x3e8a3d71    # 0.27f

    const v42, 0x3f4ccccd    # 0.8f

    const v43, 0x3e8a3d71    # 0.27f

    const v44, 0x3f933333    # 1.15f

    const/16 v45, 0x0

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v0, -0x3f18f5c3    # -7.22f

    const v15, 0x40e6147b    # 7.19f

    invoke-virtual {v13, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const v40, 0x41a0b852    # 20.09f

    const v41, 0x4143851f    # 12.22f

    const v42, 0x41a0b852    # 20.09f

    const v43, 0x413b0a3d    # 11.69f

    const v44, 0x419dd70a    # 19.73f

    const v45, 0x4136b852    # 11.42f

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const/high16 v0, 0x41580000    # 13.5f

    const/high16 v15, 0x41680000    # 14.5f

    invoke-virtual {v13, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const/high16 v0, -0x3f800000    # -4.0f

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const/16 v40, 0x0

    const v41, -0x40e66666    # -0.6f

    const v42, 0x3ecccccd    # 0.4f

    const/high16 v43, -0x40800000    # -1.0f

    const/high16 v44, 0x3f800000    # 1.0f

    const/high16 v45, -0x40800000    # -1.0f

    invoke-virtual/range {v39 .. v45}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const/high16 v0, 0x40900000    # 4.5f

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const/high16 v0, 0x40f00000    # 7.5f

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const/high16 v0, 0x41880000    # 17.0f

    const/high16 v15, 0x41300000    # 11.0f

    invoke-virtual {v13, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const/high16 v0, 0x41680000    # 14.5f

    const/high16 v15, 0x41580000    # 13.5f

    invoke-virtual {v13, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    nop

    .line 201
    .end local v13    # "$this$_get_AssistantDirection__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v14    # "$i$a$-materialPath-YwgOQQI$default-AssistantDirectionKt$AssistantDirection$1$3":I
    nop

    .line 202
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v20

    .line 200
    .end local v11    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 203
    nop

    .line 204
    .end local v9    # "$i$f$PathData":I
    nop

    .line 205
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

    .line 198
    invoke-static/range {v19 .. v35}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 214
    nop

    .line 215
    .end local v7    # "name$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$path-R_LF-3I":I
    .end local v19    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v23    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v25    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v27    # "strokeLineWidth$iv$iv":F
    .end local v28    # "strokeLineCap$iv$iv":I
    .end local v29    # "strokeLineJoin$iv$iv":I
    .end local v30    # "strokeLineMiter$iv$iv":F
    nop

    .line 63
    .end local v2    # "fillAlpha$iv":F
    .end local v4    # "strokeAlpha$iv":F
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v17    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 93
    .end local v1    # "$this$_get_AssistantDirection__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v3    # "$i$a$-materialIcon-AssistantDirectionKt$AssistantDirection$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v10    # "autoMirror$iv":Z
    .end local v37    # "$i$f$materialIcon":I
    .end local v38    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/automirrored/twotone/AssistantDirectionKt;->_assistantDirection:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 88
    sget-object v0, Landroidx/compose/material/icons/automirrored/twotone/AssistantDirectionKt;->_assistantDirection:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
