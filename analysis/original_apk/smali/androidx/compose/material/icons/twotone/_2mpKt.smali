.class public final Landroidx/compose/material/icons/twotone/_2mpKt;
.super Ljava/lang/Object;
.source "_2mp.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_2mp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _2mp.kt\nandroidx/compose/material/icons/twotone/_2mpKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,166:1\n212#2,12:167\n233#2,18:180\n253#2:217\n233#2,18:218\n253#2:255\n233#2,18:256\n253#2:293\n233#2,18:294\n253#2:331\n233#2,18:332\n253#2:369\n233#2,18:370\n253#2:407\n174#3:179\n705#4,2:198\n717#4,2:200\n719#4,11:206\n705#4,2:236\n717#4,2:238\n719#4,11:244\n705#4,2:274\n717#4,2:276\n719#4,11:282\n705#4,2:312\n717#4,2:314\n719#4,11:320\n705#4,2:350\n717#4,2:352\n719#4,11:358\n705#4,2:388\n717#4,2:390\n719#4,11:396\n72#5,4:202\n72#5,4:240\n72#5,4:278\n72#5,4:316\n72#5,4:354\n72#5,4:392\n*S KotlinDebug\n*F\n+ 1 _2mp.kt\nandroidx/compose/material/icons/twotone/_2mpKt\n*L\n29#1:167,12\n30#1:180,18\n30#1:217\n81#1:218,18\n81#1:255\n88#1:256,18\n88#1:293\n106#1:294,18\n106#1:331\n124#1:332,18\n124#1:369\n142#1:370,18\n142#1:407\n29#1:179\n30#1:198,2\n30#1:200,2\n30#1:206,11\n81#1:236,2\n81#1:238,2\n81#1:244,11\n88#1:274,2\n88#1:276,2\n88#1:282,11\n106#1:312,2\n106#1:314,2\n106#1:320,11\n124#1:350,2\n124#1:352,2\n124#1:358,11\n142#1:388,2\n142#1:390,2\n142#1:396,11\n30#1:202,4\n81#1:240,4\n88#1:278,4\n106#1:316,4\n124#1:354,4\n142#1:392,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "__2mp",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "_2mp",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "get_2mp",
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
.field private static __2mp:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final get_2mp(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 44
    .param p0, "$this$_2mp"    # Landroidx/compose/material/icons/Icons$TwoTone;

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/_2mpKt;->__2mp:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Landroidx/compose/material/icons/twotone/_2mpKt;->__2mp:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "TwoTone._2mp"

    .line 167
    .local v0, "name$iv":Ljava/lang/String;
    nop

    .line 169
    const/4 v13, 0x0

    .line 167
    .local v13, "autoMirror$iv":Z
    const/4 v14, 0x0

    .line 178
    .local v14, "$i$f$materialIcon":I
    nop

    .line 171
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 172
    nop

    .line 173
    const/high16 v1, 0x41c00000    # 24.0f

    .local v1, "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 179
    .local v2, "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 174
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v1, 0x41c00000    # 24.0f

    .restart local v1    # "$this$dp$iv$iv":F
    const/4 v2, 0x0

    .line 179
    .restart local v2    # "$i$f$getDp":I
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 175
    .end local v1    # "$this$dp$iv$iv":F
    .end local v2    # "$i$f$getDp":I
    const/high16 v5, 0x41c00000    # 24.0f

    .line 176
    const/high16 v6, 0x41c00000    # 24.0f

    .line 171
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 177
    nop

    .line 171
    const/16 v11, 0x60

    const/4 v12, 0x0

    move-object v1, v15

    move-object v2, v0

    move v10, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 178
    nop

    .local v1, "$this$_get__2mp__u24lambda_u246":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v2, 0x0

    .line 30
    .local v2, "$i$a$-materialIcon$default-_2mpKt$_2mp$1":I
    const v3, 0x3e99999a    # 0.3f

    .local v3, "fillAlpha$iv":F
    move/from16 v20, v3

    const v22, 0x3e99999a    # 0.3f

    .local v22, "strokeAlpha$iv":F
    move-object v4, v1

    .line 180
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 183
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v17, v5

    .line 180
    const/4 v6, 0x0

    .line 189
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 190
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v7

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 192
    nop

    .line 194
    nop

    .line 195
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 196
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 197
    nop

    .line 189
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

    .line 198
    .local v25, "strokeLineJoin$iv$iv":I
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 199
    const-string v8, ""

    .local v8, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v8

    .line 198
    const/4 v9, 0x0

    .line 200
    .local v9, "$i$f$path-R_LF-3I":I
    nop

    .line 201
    const/4 v11, 0x0

    .line 202
    .local v11, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v16, 0x0

    .line 203
    .local v16, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v34, v12

    .local v34, "$this$_get__2mp__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v35, 0x0

    .line 31
    .local v35, "$i$a$-materialPath-YwgOQQI$default-_2mpKt$_2mp$1$1":I
    const/high16 v10, 0x40a00000    # 5.0f

    const/high16 v7, 0x41980000    # 19.0f

    move-object/from16 v41, v0

    move-object/from16 v0, v34

    .end local v34    # "$this$_get__2mp__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get__2mp__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v41, "name$iv":Ljava/lang/String;
    invoke-virtual {v0, v10, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const/high16 v7, 0x41980000    # 19.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const/high16 v7, 0x41900000    # 18.0f

    const/high16 v10, 0x41580000    # 13.5f

    invoke-virtual {v0, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const/16 v28, 0x0

    const v29, 0x3f0ccccd    # 0.55f

    const v30, -0x4119999a    # -0.45f

    const/high16 v31, 0x3f800000    # 1.0f

    const/high16 v32, -0x40800000    # -1.0f

    const/high16 v33, 0x3f800000    # 1.0f

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const/high16 v7, -0x40000000    # -2.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const/high16 v10, -0x40400000    # -1.5f

    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const/high16 v10, -0x3f400000    # -6.0f

    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const/high16 v10, 0x41880000    # 17.0f

    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v28, 0x418c6666    # 17.55f

    const/high16 v29, 0x41480000    # 12.5f

    const/high16 v30, 0x41900000    # 18.0f

    const v31, 0x414f3333    # 12.95f

    const/high16 v32, 0x41900000    # 18.0f

    const/high16 v33, 0x41580000    # 13.5f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v7, 0x41100000    # 9.0f

    invoke-virtual {v0, v10, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const/16 v28, 0x0

    const v29, -0x40f33333    # -0.55f

    const v30, 0x3ee66666    # 0.45f

    const/high16 v31, -0x40800000    # -1.0f

    const/high16 v32, 0x3f800000    # 1.0f

    const/high16 v33, -0x40800000    # -1.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const/high16 v7, 0x40e00000    # 7.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const/high16 v7, -0x3fc00000    # -3.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const/high16 v7, 0x40b00000    # 5.5f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const/high16 v7, 0x40600000    # 3.5f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v28, 0x3f0ccccd    # 0.55f

    const/16 v29, 0x0

    const/high16 v30, 0x3f800000    # 1.0f

    const v31, 0x3ee66666    # 0.45f

    const/high16 v33, 0x3f800000    # 1.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const/high16 v7, 0x41000000    # 8.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const/16 v28, 0x0

    const v29, 0x3f0ccccd    # 0.55f

    const v30, -0x4119999a    # -0.45f

    const/high16 v31, 0x3f800000    # 1.0f

    const/high16 v32, -0x40800000    # -1.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const/high16 v7, -0x40000000    # -2.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const/high16 v7, 0x40400000    # 3.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const/high16 v7, 0x41100000    # 9.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v10, 0x41580000    # 13.5f

    invoke-virtual {v0, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v29, -0x40f33333    # -0.55f

    const v30, 0x3ee66666    # 0.45f

    const/high16 v31, -0x40800000    # -1.0f

    const/high16 v32, 0x3f800000    # 1.0f

    const/high16 v33, -0x40800000    # -1.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const/high16 v10, 0x40900000    # 4.5f

    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v28, 0x3f0ccccd    # 0.55f

    const/16 v29, 0x0

    const/high16 v30, 0x3f800000    # 1.0f

    const v31, 0x3ee66666    # 0.45f

    const/high16 v33, 0x3f800000    # 1.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const/high16 v7, 0x40a00000    # 5.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const/high16 v7, 0x41300000    # 11.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const/high16 v10, 0x40400000    # 3.0f

    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const/high16 v10, 0x41080000    # 8.5f

    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const/high16 v10, -0x3fc00000    # -3.0f

    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const/high16 v7, 0x40900000    # 4.5f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const/high16 v7, 0x40c00000    # 6.0f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const/high16 v7, 0x41580000    # 13.5f

    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    nop

    .line 203
    .end local v0    # "$this$_get__2mp__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v35    # "$i$a$-materialPath-YwgOQQI$default-_2mpKt$_2mp$1$1":I
    nop

    .line 204
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 202
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v16    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 205
    nop

    .line 206
    .end local v11    # "$i$f$PathData":I
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

    .line 215
    nop

    .line 200
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 216
    nop

    .line 217
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

    .line 81
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v22    # "strokeAlpha$iv":F
    const v0, 0x3e99999a    # 0.3f

    .local v0, "fillAlpha$iv":F
    move/from16 v28, v0

    const v30, 0x3e99999a    # 0.3f

    .local v30, "strokeAlpha$iv":F
    move-object v3, v1

    .line 218
    .local v3, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 221
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .local v4, "pathFillType$iv":I
    move/from16 v25, v4

    .line 218
    const/4 v5, 0x0

    .line 227
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 228
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 230
    nop

    .line 232
    nop

    .line 233
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 234
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 235
    nop

    .line 227
    const/4 v6, 0x0

    move-object/from16 v29, v6

    .local v27, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v29, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v3

    const/high16 v6, 0x3f800000    # 1.0f

    .local v23, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v6

    .local v31, "strokeLineWidth$iv$iv":F
    .local v32, "strokeLineCap$iv$iv":I
    move/from16 v34, v6

    .line 236
    .local v33, "strokeLineJoin$iv$iv":I
    .local v34, "strokeLineMiter$iv$iv":F
    nop

    .line 237
    const-string v6, ""

    .local v6, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 236
    const/4 v7, 0x0

    .line 238
    .local v7, "$i$f$path-R_LF-3I":I
    nop

    .line 239
    const/4 v8, 0x0

    .line 240
    .local v8, "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v9, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v10, 0x0

    .line 241
    .local v10, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v9

    .local v11, "$this$_get__2mp__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 82
    .local v12, "$i$a$-materialPath-YwgOQQI$default-_2mpKt$_2mp$1$2":I
    const/high16 v15, 0x41700000    # 15.0f

    move/from16 v16, v0

    const/high16 v0, 0x41600000    # 14.0f

    .end local v0    # "fillAlpha$iv":F
    .local v16, "fillAlpha$iv":F
    invoke-virtual {v11, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const/high16 v0, -0x40400000    # -1.5f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    nop

    .line 241
    .end local v11    # "$this$_get__2mp__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-materialPath-YwgOQQI$default-_2mpKt$_2mp$1$2":I
    nop

    .line 242
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 240
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 243
    nop

    .line 244
    .end local v8    # "$i$f$PathData":I
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

    .line 253
    nop

    .line 238
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 254
    nop

    .line 255
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

    .line 88
    .end local v3    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v16    # "fillAlpha$iv":F
    .end local v30    # "strokeAlpha$iv":F
    move-object v0, v1

    .line 256
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 257
    const/high16 v3, 0x3f800000    # 1.0f

    .local v3, "fillAlpha$iv":F
    move/from16 v28, v3

    .line 256
    nop

    .line 258
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "strokeAlpha$iv":F
    move/from16 v30, v4

    .line 256
    nop

    .line 259
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v25, v5

    .line 256
    const/4 v6, 0x0

    .line 265
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 266
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v7

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 268
    nop

    .line 270
    nop

    .line 271
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 272
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 273
    nop

    .line 265
    const/4 v7, 0x0

    move-object/from16 v29, v7

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v0

    const/high16 v7, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v7

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v7

    .line 274
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 275
    const-string v7, ""

    .local v7, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v7

    .line 274
    const/4 v8, 0x0

    .line 276
    .local v8, "$i$f$path-R_LF-3I":I
    nop

    .line 277
    const/4 v9, 0x0

    .line 278
    .local v9, "$i$f$PathData":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v10, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 279
    .local v11, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v10

    .local v12, "$this$_get__2mp__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v24, 0x0

    .line 89
    .local v24, "$i$a$-materialPath-YwgOQQI$default-_2mpKt$_2mp$1$3":I
    const/high16 v15, 0x40f00000    # 7.5f

    move-object/from16 v43, v0

    const/high16 v0, 0x41600000    # 14.0f

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v43, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v12, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const/high16 v15, 0x40400000    # 3.0f

    invoke-virtual {v12, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const/high16 v15, 0x41200000    # 10.0f

    invoke-virtual {v12, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const/high16 v15, -0x3fc00000    # -3.0f

    invoke-virtual {v12, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const/high16 v0, 0x40900000    # 4.5f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const/high16 v0, -0x3f600000    # -5.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const/16 v17, 0x0

    const v18, -0x40f33333    # -0.55f

    const v19, -0x4119999a    # -0.45f

    const/high16 v20, -0x40800000    # -1.0f

    const/high16 v21, -0x40800000    # -1.0f

    const/high16 v22, -0x40800000    # -1.0f

    move-object/from16 v16, v12

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const v17, -0x40f33333    # -0.55f

    const/16 v18, 0x0

    const/high16 v19, -0x40800000    # -1.0f

    const v20, 0x3ee66666    # 0.45f

    const/high16 v22, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    nop

    .line 279
    .end local v12    # "$this$_get__2mp__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v24    # "$i$a$-materialPath-YwgOQQI$default-_2mpKt$_2mp$1$3":I
    nop

    .line 280
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 278
    .end local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 281
    nop

    .line 282
    .end local v9    # "$i$f$PathData":I
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

    .line 291
    nop

    .line 276
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 292
    nop

    .line 293
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

    .line 106
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "strokeAlpha$iv":F
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v43    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object v0, v1

    .line 294
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 295
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "fillAlpha$iv":F
    move/from16 v28, v3

    .line 294
    nop

    .line 296
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "strokeAlpha$iv":F
    move/from16 v30, v4

    .line 294
    nop

    .line 297
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .restart local v5    # "pathFillType$iv":I
    move/from16 v25, v5

    .line 294
    const/4 v6, 0x0

    .line 303
    .restart local v6    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 304
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v7

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 306
    nop

    .line 308
    nop

    .line 309
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 310
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 311
    nop

    .line 303
    const/4 v7, 0x0

    move-object/from16 v29, v7

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v0

    const/high16 v7, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v7

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v7

    .line 312
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 313
    const-string v7, ""

    .restart local v7    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v7

    .line 312
    const/4 v8, 0x0

    .line 314
    .restart local v8    # "$i$f$path-R_LF-3I":I
    nop

    .line 315
    const/4 v9, 0x0

    .line 316
    .restart local v9    # "$i$f$PathData":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 317
    .restart local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v10

    .local v12, "$this$_get__2mp__u24lambda_u246_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v22, 0x0

    .line 107
    .local v22, "$i$a$-materialPath-YwgOQQI$default-_2mpKt$_2mp$1$4":I
    const/high16 v15, 0x41940000    # 18.5f

    move-object/from16 v43, v0

    const/high16 v0, 0x41580000    # 13.5f

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v43    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v12, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    const/high16 v0, 0x41880000    # 17.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    const v16, 0x3f0ccccd    # 0.55f

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const v19, -0x4119999a    # -0.45f

    const/high16 v20, 0x3f800000    # 1.0f

    move v0, v15

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    const/high16 v15, -0x3fe00000    # -2.5f

    invoke-virtual {v12, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    const/16 v16, 0x0

    const v17, -0x40f33333    # -0.55f

    const v18, -0x4119999a    # -0.45f

    const/high16 v19, -0x40800000    # -1.0f

    const/high16 v20, -0x40800000    # -1.0f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    const/high16 v15, -0x3fa00000    # -3.5f

    invoke-virtual {v12, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    const/high16 v0, 0x41700000    # 15.0f

    const/high16 v15, 0x41600000    # 14.0f

    invoke-virtual {v12, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    const/high16 v15, 0x3fc00000    # 1.5f

    invoke-virtual {v12, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 119
    invoke-virtual {v12, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 121
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 122
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    nop

    .line 317
    .end local v12    # "$this$_get__2mp__u24lambda_u246_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v22    # "$i$a$-materialPath-YwgOQQI$default-_2mpKt$_2mp$1$4":I
    nop

    .line 318
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 316
    .end local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 319
    nop

    .line 320
    .end local v9    # "$i$f$PathData":I
    nop

    .line 321
    nop

    .line 322
    nop

    .line 323
    nop

    .line 324
    nop

    .line 325
    nop

    .line 326
    nop

    .line 327
    nop

    .line 328
    nop

    .line 329
    nop

    .line 314
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 330
    nop

    .line 331
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

    .line 124
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "strokeAlpha$iv":F
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v43    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object v0, v1

    .line 332
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 333
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "fillAlpha$iv":F
    move/from16 v28, v3

    .line 332
    nop

    .line 334
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "strokeAlpha$iv":F
    move/from16 v30, v4

    .line 332
    nop

    .line 335
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .restart local v5    # "pathFillType$iv":I
    move/from16 v25, v5

    .line 332
    const/4 v6, 0x0

    .line 341
    .restart local v6    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 342
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v7

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 344
    nop

    .line 346
    nop

    .line 347
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 348
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 349
    nop

    .line 341
    const/4 v7, 0x0

    move-object/from16 v29, v7

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v0

    const/high16 v7, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v7

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v7

    .line 350
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 351
    const-string v7, ""

    .restart local v7    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v7

    .line 350
    const/4 v8, 0x0

    .line 352
    .restart local v8    # "$i$f$path-R_LF-3I":I
    nop

    .line 353
    const/4 v9, 0x0

    .line 354
    .restart local v9    # "$i$f$PathData":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 355
    .restart local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v10

    .local v12, "$this$_get__2mp__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v22, 0x0

    .line 125
    .local v22, "$i$a$-materialPath-YwgOQQI$default-_2mpKt$_2mp$1$5":I
    move-object/from16 v42, v0

    const/high16 v0, 0x41980000    # 19.0f

    const/high16 v15, 0x40400000    # 3.0f

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v42, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v12, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 126
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 127
    const v16, 0x4079999a    # 3.9f

    const/high16 v17, 0x40400000    # 3.0f

    const/high16 v18, 0x40400000    # 3.0f

    const v19, 0x4079999a    # 3.9f

    const/high16 v20, 0x40400000    # 3.0f

    const/high16 v21, 0x40a00000    # 5.0f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 128
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 129
    const/16 v16, 0x0

    const v17, 0x3f8ccccd    # 1.1f

    const v18, 0x3f666666    # 0.9f

    const/high16 v19, 0x40000000    # 2.0f

    const/high16 v20, 0x40000000    # 2.0f

    const/high16 v21, 0x40000000    # 2.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 130
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 131
    const v16, 0x3f8ccccd    # 1.1f

    const/16 v17, 0x0

    const/high16 v18, 0x40000000    # 2.0f

    const v19, -0x4099999a    # -0.9f

    const/high16 v21, -0x40000000    # -2.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 132
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 133
    const/high16 v16, 0x41a80000    # 21.0f

    const v17, 0x4079999a    # 3.9f

    const v18, 0x41a0cccd    # 20.1f

    const/high16 v19, 0x40400000    # 3.0f

    const/high16 v20, 0x41980000    # 19.0f

    const/high16 v21, 0x40400000    # 3.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 134
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 135
    const/high16 v0, 0x41980000    # 19.0f

    invoke-virtual {v12, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 136
    const/high16 v15, 0x40a00000    # 5.0f

    invoke-virtual {v12, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 137
    invoke-virtual {v12, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 138
    const/high16 v15, 0x41600000    # 14.0f

    invoke-virtual {v12, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 139
    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 140
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 141
    nop

    .line 355
    .end local v12    # "$this$_get__2mp__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v22    # "$i$a$-materialPath-YwgOQQI$default-_2mpKt$_2mp$1$5":I
    nop

    .line 356
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 354
    .end local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 357
    nop

    .line 358
    .end local v9    # "$i$f$PathData":I
    nop

    .line 359
    nop

    .line 360
    nop

    .line 361
    nop

    .line 362
    nop

    .line 363
    nop

    .line 364
    nop

    .line 365
    nop

    .line 366
    nop

    .line 367
    nop

    .line 352
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 368
    nop

    .line 369
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

    .line 142
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "strokeAlpha$iv":F
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v42    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object v0, v1

    .line 370
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 371
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "fillAlpha$iv":F
    move/from16 v28, v3

    .line 370
    nop

    .line 372
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "strokeAlpha$iv":F
    move/from16 v30, v4

    .line 370
    nop

    .line 373
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .restart local v5    # "pathFillType$iv":I
    move/from16 v25, v5

    .line 370
    const/4 v6, 0x0

    .line 379
    .restart local v6    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 380
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v7

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 382
    nop

    .line 384
    nop

    .line 385
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 386
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 387
    nop

    .line 379
    const/4 v7, 0x0

    move-object/from16 v29, v7

    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v0

    const/high16 v7, 0x3f800000    # 1.0f

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move/from16 v31, v7

    .restart local v31    # "strokeLineWidth$iv$iv":F
    .restart local v32    # "strokeLineCap$iv$iv":I
    move/from16 v34, v7

    .line 388
    .restart local v33    # "strokeLineJoin$iv$iv":I
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 389
    const-string v7, ""

    .restart local v7    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v7

    .line 388
    const/4 v8, 0x0

    .line 390
    .restart local v8    # "$i$f$path-R_LF-3I":I
    nop

    .line 391
    const/4 v9, 0x0

    .line 392
    .restart local v9    # "$i$f$PathData":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 393
    .restart local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v10

    .local v12, "$this$_get__2mp__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v22, 0x0

    .line 143
    .local v22, "$i$a$-materialPath-YwgOQQI$default-_2mpKt$_2mp$1$6":I
    const/high16 v15, 0x41680000    # 14.5f

    move-object/from16 v40, v0

    const/high16 v0, 0x41200000    # 10.0f

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v40, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v12, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 144
    const/high16 v0, -0x3fc00000    # -3.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 145
    const/high16 v0, 0x41100000    # 9.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 146
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 147
    const v16, 0x3f0ccccd    # 0.55f

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const v19, -0x4119999a    # -0.45f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, -0x40800000    # -1.0f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 148
    const/high16 v0, 0x40d00000    # 6.5f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 149
    const/16 v16, 0x0

    const v17, -0x40f33333    # -0.55f

    const v18, -0x4119999a    # -0.45f

    const/high16 v19, -0x40800000    # -1.0f

    const/high16 v20, -0x40800000    # -1.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 150
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 151
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 152
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 153
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 154
    const/high16 v0, -0x40000000    # -2.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 155
    const v16, -0x40f33333    # -0.55f

    const/16 v17, 0x0

    const/high16 v18, -0x40800000    # -1.0f

    const v19, 0x3ee66666    # 0.45f

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 156
    const/high16 v0, 0x40200000    # 2.5f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 157
    const/high16 v0, 0x40900000    # 4.5f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 158
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 159
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 160
    nop

    .line 393
    .end local v12    # "$this$_get__2mp__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v22    # "$i$a$-materialPath-YwgOQQI$default-_2mpKt$_2mp$1$6":I
    nop

    .line 394
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 392
    .end local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 395
    nop

    .line 396
    .end local v9    # "$i$f$PathData":I
    nop

    .line 397
    nop

    .line 398
    nop

    .line 399
    nop

    .line 400
    nop

    .line 401
    nop

    .line 402
    nop

    .line 403
    nop

    .line 404
    nop

    .line 405
    nop

    .line 390
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 406
    nop

    .line 407
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

    .line 142
    .end local v3    # "fillAlpha$iv":F
    .end local v4    # "strokeAlpha$iv":F
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v40    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 178
    .end local v1    # "$this$_get__2mp__u24lambda_u246":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v2    # "$i$a$-materialIcon$default-_2mpKt$_2mp$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v13    # "autoMirror$iv":Z
    .end local v14    # "$i$f$materialIcon":I
    .end local v41    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/twotone/_2mpKt;->__2mp:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 162
    sget-object v0, Landroidx/compose/material/icons/twotone/_2mpKt;->__2mp:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
