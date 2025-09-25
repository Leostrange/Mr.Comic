.class public final Landroidx/compose/animation/core/SpringEstimationKt;
.super Ljava/lang/Object;
.source "SpringEstimation.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpringEstimation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpringEstimation.kt\nandroidx/compose/animation/core/SpringEstimationKt\n+ 2 ComplexDouble.kt\nandroidx/compose/animation/core/ComplexDoubleKt\n+ 3 ComplexDouble.kt\nandroidx/compose/animation/core/ComplexDouble\n*L\n1#1,329:1\n328#1:362\n328#1:363\n324#1:364\n328#1:365\n328#1:366\n324#1:367\n103#2:330\n107#2:336\n103#2:340\n103#2:346\n107#2:352\n103#2:356\n35#3,2:331\n54#3,3:333\n66#3,3:337\n35#3,2:341\n54#3,3:343\n35#3,2:347\n54#3,3:349\n66#3,3:353\n35#3,2:357\n54#3,3:359\n*S KotlinDebug\n*F\n+ 1 SpringEstimation.kt\nandroidx/compose/animation/core/SpringEstimationKt\n*L\n149#1:362\n150#1:363\n188#1:364\n221#1:365\n222#1:366\n266#1:367\n59#1:330\n60#1:336\n60#1:340\n90#1:346\n91#1:352\n91#1:356\n59#1:331,2\n59#1:333,3\n60#1:337,3\n60#1:341,2\n60#1:343,3\n90#1:347,2\n90#1:349,3\n91#1:353,3\n91#1:357,2\n91#1:359,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u001a.\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003\u001a6\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003\u001a.\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u000b\u001a(\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0002\u001a8\u0010\u0011\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0002\u001a0\u0010\u0014\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0002\u001a(\u0010\u0015\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0002\u001a9\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00032\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0019H\u0082\u0008\u001a\r\u0010\u001b\u001a\u00020\u001c*\u00020\u0003H\u0082\u0008\u00a8\u0006\u001d"
    }
    d2 = {
        "estimateAnimationDurationMillis",
        "",
        "stiffness",
        "",
        "dampingRatio",
        "initialVelocity",
        "initialDisplacement",
        "delta",
        "springConstant",
        "dampingCoefficient",
        "mass",
        "",
        "estimateCriticallyDamped",
        "firstRoot",
        "Landroidx/compose/animation/core/ComplexDouble;",
        "p0",
        "v0",
        "estimateDurationInternal",
        "secondRoot",
        "initialPosition",
        "estimateOverDamped",
        "estimateUnderDamped",
        "iterateNewtonsMethod",
        "x",
        "fn",
        "Lkotlin/Function1;",
        "fnPrime",
        "isNotFinite",
        "",
        "animation-core_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final estimateAnimationDurationMillis(DDDDD)J
    .locals 19
    .param p0, "stiffness"    # D
    .param p2, "dampingRatio"    # D
    .param p4, "initialVelocity"    # D
    .param p6, "initialDisplacement"    # D
    .param p8, "delta"    # D

    .line 54
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v0, v0, p2

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 58
    .local v0, "dampingCoefficient":D
    mul-double v2, v0, v0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double v4, v4, p0

    sub-double v12, v2, v4

    .line 59
    .local v12, "partialRoot":D
    neg-double v2, v0

    .local v2, "$this$plus$iv":D
    invoke-static {v12, v13}, Landroidx/compose/animation/core/ComplexDoubleKt;->complexSqrt(D)Landroidx/compose/animation/core/ComplexDouble;

    move-result-object v4

    .local v4, "other$iv":Landroidx/compose/animation/core/ComplexDouble;
    const/4 v5, 0x0

    .line 330
    .local v5, "$i$f$plus":I
    move-object v6, v4

    .local v6, "this_$iv$iv":Landroidx/compose/animation/core/ComplexDouble;
    const/4 v7, 0x0

    .line 331
    .local v7, "$i$f$plus":I
    invoke-static {v6}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v8

    add-double/2addr v8, v2

    invoke-static {v6, v8, v9}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 332
    nop

    .line 330
    .end local v6    # "this_$iv$iv":Landroidx/compose/animation/core/ComplexDouble;
    .end local v7    # "$i$f$plus":I
    nop

    .line 59
    .end local v2    # "$this$plus$iv":D
    .end local v4    # "other$iv":Landroidx/compose/animation/core/ComplexDouble;
    .end local v5    # "$i$f$plus":I
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .local v2, "other$iv":D
    .local v4, "this_$iv":Landroidx/compose/animation/core/ComplexDouble;
    const/4 v5, 0x0

    .line 333
    .local v5, "$i$f$times":I
    invoke-static {v4}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v6

    mul-double/2addr v6, v2

    invoke-static {v4, v6, v7}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 334
    invoke-static {v4}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v6

    mul-double/2addr v6, v2

    invoke-static {v4, v6, v7}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 335
    nop

    .line 59
    .end local v2    # "other$iv":D
    .end local v4    # "this_$iv":Landroidx/compose/animation/core/ComplexDouble;
    .end local v5    # "$i$f$times":I
    move-object v2, v4

    .line 60
    .local v2, "firstRoot":Landroidx/compose/animation/core/ComplexDouble;
    neg-double v3, v0

    .local v3, "$this$minus$iv":D
    invoke-static {v12, v13}, Landroidx/compose/animation/core/ComplexDoubleKt;->complexSqrt(D)Landroidx/compose/animation/core/ComplexDouble;

    move-result-object v5

    .local v5, "other$iv":Landroidx/compose/animation/core/ComplexDouble;
    const/4 v6, 0x0

    .line 336
    .local v6, "$i$f$minus":I
    move-object v7, v5

    .local v7, "this_$iv$iv":Landroidx/compose/animation/core/ComplexDouble;
    const/4 v8, 0x0

    .line 337
    .local v8, "$i$f$unaryMinus":I
    invoke-static {v7}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v9

    const/4 v11, -0x1

    int-to-double v14, v11

    mul-double/2addr v9, v14

    invoke-static {v7, v9, v10}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 338
    invoke-static {v7}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v9

    mul-double/2addr v9, v14

    invoke-static {v7, v9, v10}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 339
    nop

    .line 336
    .end local v7    # "this_$iv$iv":Landroidx/compose/animation/core/ComplexDouble;
    .end local v8    # "$i$f$unaryMinus":I
    nop

    .local v7, "other$iv$iv":Landroidx/compose/animation/core/ComplexDouble;
    move-wide v8, v3

    .local v8, "$this$plus$iv$iv":D
    const/4 v10, 0x0

    .line 340
    .local v10, "$i$f$plus":I
    move-object v11, v7

    .local v11, "this_$iv$iv$iv":Landroidx/compose/animation/core/ComplexDouble;
    const/4 v14, 0x0

    .line 341
    .local v14, "$i$f$plus":I
    invoke-static {v11}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v15

    move-wide/from16 v17, v0

    .end local v0    # "dampingCoefficient":D
    .local v17, "dampingCoefficient":D
    add-double v0, v15, v8

    invoke-static {v11, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 342
    nop

    .line 340
    .end local v11    # "this_$iv$iv$iv":Landroidx/compose/animation/core/ComplexDouble;
    .end local v14    # "$i$f$plus":I
    nop

    .line 336
    .end local v7    # "other$iv$iv":Landroidx/compose/animation/core/ComplexDouble;
    .end local v8    # "$this$plus$iv$iv":D
    .end local v10    # "$i$f$plus":I
    nop

    .line 60
    .end local v3    # "$this$minus$iv":D
    .end local v5    # "other$iv":Landroidx/compose/animation/core/ComplexDouble;
    .end local v6    # "$i$f$minus":I
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .local v0, "other$iv":D
    move-object v3, v11

    .local v3, "this_$iv":Landroidx/compose/animation/core/ComplexDouble;
    const/4 v4, 0x0

    .line 343
    .local v4, "$i$f$times":I
    invoke-static {v3}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v5

    mul-double/2addr v5, v0

    invoke-static {v3, v5, v6}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 344
    invoke-static {v3}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v5

    mul-double/2addr v5, v0

    invoke-static {v3, v5, v6}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 345
    nop

    .line 60
    .end local v0    # "other$iv":D
    .end local v3    # "this_$iv":Landroidx/compose/animation/core/ComplexDouble;
    .end local v4    # "$i$f$times":I
    nop

    .line 63
    .local v3, "secondRoot":Landroidx/compose/animation/core/ComplexDouble;
    nop

    .line 64
    nop

    .line 65
    nop

    .line 66
    nop

    .line 67
    nop

    .line 68
    nop

    .line 62
    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-static/range {v2 .. v11}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateDurationInternal(Landroidx/compose/animation/core/ComplexDouble;Landroidx/compose/animation/core/ComplexDouble;DDDD)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final estimateAnimationDurationMillis(DDDDDD)J
    .locals 23
    .param p0, "springConstant"    # D
    .param p2, "dampingCoefficient"    # D
    .param p4, "mass"    # D
    .param p6, "initialVelocity"    # D
    .param p8, "initialDisplacement"    # D
    .param p10, "delta"    # D

    .line 84
    move-wide/from16 v0, p2

    mul-double v2, p0, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    .line 85
    .local v2, "criticalDamping":D
    div-double v16, v0, v2

    .line 88
    .local v16, "dampingRatio":D
    mul-double v6, v0, v0

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    mul-double v8, v8, p4

    mul-double v8, v8, p0

    sub-double v18, v6, v8

    .line 89
    .local v18, "partialRoot":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double v4, v4, p4

    div-double v4, v6, v4

    .line 90
    .local v4, "divisor":D
    neg-double v6, v0

    .local v6, "$this$plus$iv":D
    invoke-static/range {v18 .. v19}, Landroidx/compose/animation/core/ComplexDoubleKt;->complexSqrt(D)Landroidx/compose/animation/core/ComplexDouble;

    move-result-object v8

    .local v8, "other$iv":Landroidx/compose/animation/core/ComplexDouble;
    const/4 v9, 0x0

    .line 346
    .local v9, "$i$f$plus":I
    move-object v10, v8

    .local v10, "this_$iv$iv":Landroidx/compose/animation/core/ComplexDouble;
    const/4 v11, 0x0

    .line 347
    .local v11, "$i$f$plus":I
    invoke-static {v10}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v12

    add-double/2addr v12, v6

    invoke-static {v10, v12, v13}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 348
    nop

    .line 346
    .end local v10    # "this_$iv$iv":Landroidx/compose/animation/core/ComplexDouble;
    .end local v11    # "$i$f$plus":I
    nop

    .line 90
    .end local v6    # "$this$plus$iv":D
    .end local v8    # "other$iv":Landroidx/compose/animation/core/ComplexDouble;
    .end local v9    # "$i$f$plus":I
    move-object v6, v10

    .local v6, "this_$iv":Landroidx/compose/animation/core/ComplexDouble;
    const/4 v7, 0x0

    .line 349
    .local v7, "$i$f$times":I
    invoke-static {v6}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v8

    mul-double/2addr v8, v4

    invoke-static {v6, v8, v9}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 350
    invoke-static {v6}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v8

    mul-double/2addr v8, v4

    invoke-static {v6, v8, v9}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 351
    nop

    .line 90
    .end local v6    # "this_$iv":Landroidx/compose/animation/core/ComplexDouble;
    .end local v7    # "$i$f$times":I
    nop

    .line 91
    .local v6, "firstRoot":Landroidx/compose/animation/core/ComplexDouble;
    neg-double v7, v0

    .local v7, "$this$minus$iv":D
    invoke-static/range {v18 .. v19}, Landroidx/compose/animation/core/ComplexDoubleKt;->complexSqrt(D)Landroidx/compose/animation/core/ComplexDouble;

    move-result-object v9

    .local v9, "other$iv":Landroidx/compose/animation/core/ComplexDouble;
    const/4 v10, 0x0

    .line 352
    .local v10, "$i$f$minus":I
    move-object v11, v9

    .local v11, "this_$iv$iv":Landroidx/compose/animation/core/ComplexDouble;
    const/4 v12, 0x0

    .line 353
    .local v12, "$i$f$unaryMinus":I
    invoke-static {v11}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v13

    const/4 v15, -0x1

    int-to-double v0, v15

    mul-double/2addr v13, v0

    invoke-static {v11, v13, v14}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 354
    invoke-static {v11}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v13

    mul-double/2addr v13, v0

    invoke-static {v11, v13, v14}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 355
    nop

    .line 352
    .end local v11    # "this_$iv$iv":Landroidx/compose/animation/core/ComplexDouble;
    .end local v12    # "$i$f$unaryMinus":I
    move-object v0, v11

    .local v0, "other$iv$iv":Landroidx/compose/animation/core/ComplexDouble;
    move-wide v11, v7

    .local v11, "$this$plus$iv$iv":D
    const/4 v1, 0x0

    .line 356
    .local v1, "$i$f$plus":I
    move-object v13, v0

    .local v13, "this_$iv$iv$iv":Landroidx/compose/animation/core/ComplexDouble;
    const/4 v14, 0x0

    .line 357
    .local v14, "$i$f$plus":I
    invoke-static {v13}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v20

    move-object v15, v0

    move/from16 v22, v1

    .end local v0    # "other$iv$iv":Landroidx/compose/animation/core/ComplexDouble;
    .end local v1    # "$i$f$plus":I
    .local v15, "other$iv$iv":Landroidx/compose/animation/core/ComplexDouble;
    .local v22, "$i$f$plus":I
    add-double v0, v20, v11

    invoke-static {v13, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 358
    nop

    .line 356
    .end local v13    # "this_$iv$iv$iv":Landroidx/compose/animation/core/ComplexDouble;
    .end local v14    # "$i$f$plus":I
    nop

    .line 352
    .end local v11    # "$this$plus$iv$iv":D
    .end local v15    # "other$iv$iv":Landroidx/compose/animation/core/ComplexDouble;
    .end local v22    # "$i$f$plus":I
    nop

    .line 91
    .end local v7    # "$this$minus$iv":D
    .end local v9    # "other$iv":Landroidx/compose/animation/core/ComplexDouble;
    .end local v10    # "$i$f$minus":I
    move-object v7, v13

    .local v7, "this_$iv":Landroidx/compose/animation/core/ComplexDouble;
    const/4 v0, 0x0

    .line 359
    .local v0, "$i$f$times":I
    invoke-static {v7}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v8

    mul-double/2addr v8, v4

    invoke-static {v7, v8, v9}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 360
    invoke-static {v7}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v8

    mul-double/2addr v8, v4

    invoke-static {v7, v8, v9}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 361
    nop

    .line 91
    .end local v0    # "$i$f$times":I
    .end local v7    # "this_$iv":Landroidx/compose/animation/core/ComplexDouble;
    nop

    .line 94
    .local v7, "secondRoot":Landroidx/compose/animation/core/ComplexDouble;
    nop

    .line 95
    nop

    .line 96
    nop

    .line 97
    nop

    .line 98
    nop

    .line 99
    nop

    .line 93
    move-wide/from16 v8, v16

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    invoke-static/range {v6 .. v15}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateDurationInternal(Landroidx/compose/animation/core/ComplexDouble;Landroidx/compose/animation/core/ComplexDouble;DDDD)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final estimateAnimationDurationMillis(FFFFF)J
    .locals 10
    .param p0, "stiffness"    # F
    .param p1, "dampingRatio"    # F
    .param p2, "initialVelocity"    # F
    .param p3, "initialDisplacement"    # F
    .param p4, "delta"    # F

    .line 36
    float-to-double v0, p0

    .line 37
    float-to-double v2, p1

    .line 38
    float-to-double v4, p2

    .line 39
    float-to-double v6, p3

    .line 40
    float-to-double v8, p4

    .line 35
    invoke-static/range {v0 .. v9}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateAnimationDurationMillis(DDDDD)J

    move-result-wide v0

    .line 41
    return-wide v0
.end method

.method private static final estimateCriticallyDamped(Landroidx/compose/animation/core/ComplexDouble;DDD)D
    .locals 35
    .param p0, "firstRoot"    # Landroidx/compose/animation/core/ComplexDouble;
    .param p1, "p0"    # D
    .param p3, "v0"    # D
    .param p5, "delta"    # D

    .line 132
    move-wide/from16 v0, p5

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/ComplexDouble;->getReal()D

    move-result-wide v2

    .line 133
    .local v2, "r":D
    move-wide/from16 v4, p1

    .line 134
    .local v4, "c1":D
    mul-double v6, v2, v4

    sub-double v6, p3, v6

    .line 138
    .local v6, "c2":D
    div-double v8, v0, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v8, v2

    .line 139
    .local v8, "t1":D
    const/4 v10, 0x0

    .line 141
    .local v10, "$i$a$-run-SpringEstimationKt$estimateCriticallyDamped$t2$1":I
    div-double v11, v0, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    .line 142
    .local v11, "guess":D
    move-wide v13, v11

    .line 143
    .local v13, "t":D
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v16, v10

    .end local v10    # "$i$a$-run-SpringEstimationKt$estimateCriticallyDamped$t2$1":I
    .local v16, "$i$a$-run-SpringEstimationKt$estimateCriticallyDamped$t2$1":I
    const/4 v10, 0x6

    if-ge v15, v10, :cond_0

    .line 144
    div-double v17, v13, v2

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->log(D)D

    move-result-wide v17

    sub-double v13, v11, v17

    .line 143
    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v16

    goto :goto_0

    .line 146
    .end local v15    # "i":I
    :cond_0
    nop

    .line 139
    .end local v11    # "guess":D
    .end local v13    # "t":D
    .end local v16    # "$i$a$-run-SpringEstimationKt$estimateCriticallyDamped$t2$1":I
    nop

    .line 147
    nop

    .line 139
    div-double/2addr v13, v2

    .line 148
    .local v13, "t2":D
    nop

    .line 149
    move-wide v10, v8

    .local v10, "$this$isNotFinite$iv":D
    const/4 v12, 0x0

    .line 362
    .local v12, "$i$f$isNotFinite":I
    invoke-static {v10, v11}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v15

    const/16 v16, 0x0

    move/from16 v17, v12

    .end local v12    # "$i$f$isNotFinite":I
    .local v17, "$i$f$isNotFinite":I
    const/4 v12, 0x1

    if-nez v15, :cond_1

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-nez v15, :cond_1

    move v15, v12

    goto :goto_1

    :cond_1
    move/from16 v15, v16

    :goto_1
    xor-int/2addr v15, v12

    .line 149
    .end local v10    # "$this$isNotFinite$iv":D
    .end local v17    # "$i$f$isNotFinite":I
    if-eqz v15, :cond_2

    move-wide v10, v13

    goto :goto_2

    .line 150
    :cond_2
    move-wide v10, v13

    .restart local v10    # "$this$isNotFinite$iv":D
    const/4 v15, 0x0

    .line 363
    .local v15, "$i$f$isNotFinite":I
    invoke-static {v10, v11}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v17

    if-nez v17, :cond_3

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v17

    if-nez v17, :cond_3

    move/from16 v16, v12

    :cond_3
    xor-int/lit8 v16, v16, 0x1

    .line 150
    .end local v10    # "$this$isNotFinite$iv":D
    .end local v15    # "$i$f$isNotFinite":I
    if-eqz v16, :cond_4

    move-wide v10, v8

    goto :goto_2

    .line 151
    :cond_4
    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    .line 148
    :goto_2
    nop

    .line 155
    .local v10, "tCurr":D
    mul-double v15, v2, v4

    move-wide/from16 v17, v13

    .end local v13    # "t2":D
    .local v17, "t2":D
    add-double v12, v15, v6

    neg-double v12, v12

    mul-double v15, v2, v6

    div-double/2addr v12, v15

    .line 156
    .local v12, "tInflection":D
    mul-double v15, v2, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->exp(D)D

    move-result-wide v15

    mul-double/2addr v15, v4

    mul-double v19, v6, v12

    mul-double v21, v2, v12

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->exp(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    add-double v14, v15, v19

    .line 160
    .local v14, "xInflection":D
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v16

    if-nez v16, :cond_9

    const-wide/16 v19, 0x0

    cmpg-double v16, v12, v19

    if-gtz v16, :cond_5

    move-wide/from16 v22, v8

    goto :goto_3

    .line 162
    :cond_5
    cmpl-double v16, v12, v19

    if-lez v16, :cond_7

    move-wide/from16 v22, v8

    .end local v8    # "t1":D
    .local v22, "t1":D
    neg-double v8, v14

    cmpg-double v8, v8, v0

    if-gez v8, :cond_8

    .line 165
    cmpg-double v8, v6, v19

    if-gez v8, :cond_6

    cmpl-double v8, v4, v19

    if-lez v8, :cond_6

    .line 166
    const-wide/16 v8, 0x0

    move-wide v10, v8

    .line 168
    :cond_6
    neg-double v8, v0

    goto :goto_4

    .line 162
    .end local v22    # "t1":D
    .restart local v8    # "t1":D
    :cond_7
    move-wide/from16 v22, v8

    .line 178
    .end local v8    # "t1":D
    .restart local v22    # "t1":D
    :cond_8
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v2

    neg-double v8, v8

    div-double v19, v4, v6

    sub-double v8, v8, v19

    .line 179
    .local v8, "tConcavChange":D
    move-wide v10, v8

    .line 180
    move-wide v8, v0

    goto :goto_4

    .line 160
    .end local v22    # "t1":D
    .local v8, "t1":D
    :cond_9
    move-wide/from16 v22, v8

    .line 161
    .end local v8    # "t1":D
    .restart local v22    # "t1":D
    :goto_3
    neg-double v8, v0

    .line 160
    :goto_4
    nop

    .line 183
    .local v8, "signedDelta":D
    const-wide v19, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 184
    .local v19, "tDelta":D
    const/16 v16, 0x0

    move/from16 v0, v16

    .line 185
    .local v0, "iterations":I
    :goto_5
    const-wide v24, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v1, v19, v24

    if-lez v1, :cond_a

    const/16 v1, 0x64

    if-ge v0, v1, :cond_a

    .line 186
    add-int/lit8 v0, v0, 0x1

    .line 187
    move-wide/from16 v24, v10

    .line 188
    .local v24, "tLast":D
    const/4 v1, 0x0

    .line 364
    .local v1, "$i$f$iterateNewtonsMethod":I
    move-wide/from16 v26, v10

    .local v26, "t":D
    const/16 v16, 0x0

    .line 190
    .local v16, "$i$a$-iterateNewtonsMethod-SpringEstimationKt$estimateCriticallyDamped$1":I
    mul-double v28, v6, v26

    add-double v28, v4, v28

    mul-double v30, v2, v26

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->exp(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    add-double v28, v28, v8

    .line 364
    .end local v16    # "$i$a$-iterateNewtonsMethod-SpringEstimationKt$estimateCriticallyDamped$1":I
    .end local v26    # "t":D
    nop

    .restart local v26    # "t":D
    const/16 v16, 0x0

    .line 191
    .local v16, "$i$a$-iterateNewtonsMethod-SpringEstimationKt$estimateCriticallyDamped$2":I
    mul-double v30, v2, v26

    move/from16 v32, v0

    move-wide/from16 v33, v8

    const/4 v0, 0x1

    .end local v0    # "iterations":I
    .end local v8    # "signedDelta":D
    .local v32, "iterations":I
    .local v33, "signedDelta":D
    int-to-double v8, v0

    add-double v30, v30, v8

    mul-double v30, v30, v6

    mul-double v8, v4, v2

    add-double v30, v30, v8

    mul-double v8, v2, v26

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    mul-double v30, v30, v8

    .line 364
    .end local v16    # "$i$a$-iterateNewtonsMethod-SpringEstimationKt$estimateCriticallyDamped$2":I
    .end local v26    # "t":D
    div-double v28, v28, v30

    sub-double v8, v10, v28

    .line 188
    .end local v1    # "$i$f$iterateNewtonsMethod":I
    move-wide v10, v8

    .line 193
    sub-double v8, v24, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    move/from16 v0, v32

    move-wide/from16 v8, v33

    .end local v24    # "tLast":D
    goto :goto_5

    .line 185
    .end local v32    # "iterations":I
    .end local v33    # "signedDelta":D
    .restart local v0    # "iterations":I
    .restart local v8    # "signedDelta":D
    :cond_a
    move/from16 v16, v0

    move-wide/from16 v33, v8

    .line 196
    .end local v0    # "iterations":I
    .end local v8    # "signedDelta":D
    .local v16, "iterations":I
    .restart local v33    # "signedDelta":D
    return-wide v10
.end method

.method private static final estimateDurationInternal(Landroidx/compose/animation/core/ComplexDouble;Landroidx/compose/animation/core/ComplexDouble;DDDD)J
    .locals 17
    .param p0, "firstRoot"    # Landroidx/compose/animation/core/ComplexDouble;
    .param p1, "secondRoot"    # Landroidx/compose/animation/core/ComplexDouble;
    .param p2, "dampingRatio"    # D
    .param p4, "initialVelocity"    # D
    .param p6, "initialPosition"    # D
    .param p8, "delta"    # D

    .line 287
    move-wide/from16 v0, p4

    const-wide/16 v2, 0x0

    cmpg-double v4, p6, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    if-eqz v4, :cond_2

    cmpg-double v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    if-eqz v5, :cond_2

    .line 288
    const-wide/16 v2, 0x0

    return-wide v2

    .line 291
    :cond_2
    cmpg-double v2, p6, v2

    if-gez v2, :cond_3

    neg-double v2, v0

    move-wide v8, v2

    goto :goto_2

    :cond_3
    move-wide v8, v0

    .line 292
    .local v8, "v0":D
    :goto_2
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 295
    .local v2, "p0":D
    nop

    .line 296
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, p2, v4

    if-lez v6, :cond_4

    .line 297
    nop

    .line 298
    nop

    .line 300
    nop

    .line 299
    nop

    .line 301
    nop

    .line 296
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide v6, v2

    move-wide/from16 v10, p8

    invoke-static/range {v4 .. v11}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateOverDamped(Landroidx/compose/animation/core/ComplexDouble;Landroidx/compose/animation/core/ComplexDouble;DDD)D

    move-result-wide v4

    goto :goto_3

    .line 303
    :cond_4
    cmpg-double v4, p2, v4

    if-gez v4, :cond_5

    .line 304
    nop

    .line 306
    nop

    .line 305
    nop

    .line 307
    nop

    .line 303
    move-object/from16 v10, p0

    move-wide v11, v2

    move-wide v13, v8

    move-wide/from16 v15, p8

    invoke-static/range {v10 .. v16}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateUnderDamped(Landroidx/compose/animation/core/ComplexDouble;DDD)D

    move-result-wide v4

    goto :goto_3

    .line 310
    :cond_5
    nop

    .line 312
    nop

    .line 311
    nop

    .line 313
    nop

    .line 309
    move-object/from16 v10, p0

    move-wide v11, v2

    move-wide v13, v8

    move-wide/from16 v15, p8

    invoke-static/range {v10 .. v16}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateCriticallyDamped(Landroidx/compose/animation/core/ComplexDouble;DDD)D

    move-result-wide v4

    .line 315
    :goto_3
    nop

    .line 295
    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    .line 316
    double-to-long v4, v4

    .line 294
    return-wide v4
.end method

.method private static final estimateOverDamped(Landroidx/compose/animation/core/ComplexDouble;Landroidx/compose/animation/core/ComplexDouble;DDD)D
    .locals 38
    .param p0, "firstRoot"    # Landroidx/compose/animation/core/ComplexDouble;
    .param p1, "secondRoot"    # Landroidx/compose/animation/core/ComplexDouble;
    .param p2, "p0"    # D
    .param p4, "v0"    # D
    .param p6, "delta"    # D

    .line 210
    move-wide/from16 v0, p6

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/ComplexDouble;->getReal()D

    move-result-wide v12

    .line 211
    .local v12, "r1":D
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/core/ComplexDouble;->getReal()D

    move-result-wide v14

    .line 212
    .local v14, "r2":D
    mul-double v2, v12, p2

    sub-double v2, v2, p4

    sub-double v4, v12, v14

    div-double v10, v2, v4

    .line 213
    .local v10, "c2":D
    sub-double v16, p2, v10

    .line 217
    .local v16, "c1":D
    div-double v2, v0, v16

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double v8, v2, v12

    .line 218
    .local v8, "t1":D
    div-double v2, v0, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double v6, v2, v14

    .line 220
    .local v6, "t2":D
    nop

    .line 221
    move-wide v2, v8

    .local v2, "$this$isNotFinite$iv":D
    const/4 v4, 0x0

    .line 365
    .local v4, "$i$f$isNotFinite":I
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    const/16 v18, 0x0

    const/16 v19, 0x1

    if-nez v5, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_0

    move/from16 v5, v19

    goto :goto_0

    :cond_0
    move/from16 v5, v18

    :goto_0
    xor-int/lit8 v5, v5, 0x1

    .line 221
    .end local v2    # "$this$isNotFinite$iv":D
    .end local v4    # "$i$f$isNotFinite":I
    if-eqz v5, :cond_1

    move-wide v2, v6

    goto :goto_1

    .line 222
    :cond_1
    move-wide v2, v6

    .restart local v2    # "$this$isNotFinite$iv":D
    const/4 v4, 0x0

    .line 366
    .restart local v4    # "$i$f$isNotFinite":I
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_2

    move/from16 v18, v19

    :cond_2
    xor-int/lit8 v5, v18, 0x1

    .line 222
    .end local v2    # "$this$isNotFinite$iv":D
    .end local v4    # "$i$f$isNotFinite":I
    if-eqz v5, :cond_3

    move-wide v2, v8

    goto :goto_1

    .line 223
    :cond_3
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 220
    :goto_1
    move-wide/from16 v18, v2

    .line 227
    .local v18, "tCurr":D
    mul-double v2, v16, v12

    neg-double v4, v10

    mul-double/2addr v4, v14

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sub-double v4, v14, v12

    div-double v20, v2, v4

    .line 232
    .local v20, "tInflection":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_8

    const-wide/16 v22, 0x0

    cmpg-double v2, v20, v22

    if-gtz v2, :cond_4

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    move-wide/from16 v28, v10

    goto :goto_2

    .line 234
    :cond_4
    cmpl-double v2, v20, v22

    if-lez v2, :cond_6

    move-wide/from16 v2, v16

    move-wide v4, v12

    move-wide/from16 v24, v6

    .end local v6    # "t2":D
    .local v24, "t2":D
    move-wide/from16 v6, v20

    move-wide/from16 v26, v8

    .end local v8    # "t1":D
    .local v26, "t1":D
    move-wide v8, v10

    move-wide/from16 v28, v10

    .end local v10    # "c2":D
    .local v28, "c2":D
    move-wide v10, v14

    invoke-static/range {v2 .. v11}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateOverDamped$xInflection(DDDDD)D

    move-result-wide v2

    neg-double v2, v2

    cmpg-double v2, v2, v0

    if-gez v2, :cond_7

    .line 237
    cmpl-double v2, v28, v22

    if-lez v2, :cond_5

    cmpg-double v2, v16, v22

    if-gez v2, :cond_5

    .line 238
    const-wide/16 v2, 0x0

    move-wide/from16 v18, v2

    .line 240
    :cond_5
    neg-double v2, v0

    goto :goto_3

    .line 234
    .end local v24    # "t2":D
    .end local v26    # "t1":D
    .end local v28    # "c2":D
    .restart local v6    # "t2":D
    .restart local v8    # "t1":D
    .restart local v10    # "c2":D
    :cond_6
    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    move-wide/from16 v28, v10

    .line 250
    .end local v6    # "t2":D
    .end local v8    # "t1":D
    .end local v10    # "c2":D
    .restart local v24    # "t2":D
    .restart local v26    # "t1":D
    .restart local v28    # "c2":D
    :cond_7
    mul-double v10, v28, v14

    mul-double/2addr v10, v14

    neg-double v2, v10

    mul-double v4, v16, v12

    mul-double/2addr v4, v12

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sub-double v4, v12, v14

    div-double/2addr v2, v4

    .line 251
    .local v2, "tConcavChange":D
    move-wide/from16 v18, v2

    .line 252
    move-wide v2, v0

    goto :goto_3

    .line 232
    .end local v2    # "tConcavChange":D
    .end local v24    # "t2":D
    .end local v26    # "t1":D
    .end local v28    # "c2":D
    .restart local v6    # "t2":D
    .restart local v8    # "t1":D
    .restart local v10    # "c2":D
    :cond_8
    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    move-wide/from16 v28, v10

    .line 233
    .end local v6    # "t2":D
    .end local v8    # "t1":D
    .end local v10    # "c2":D
    .restart local v24    # "t2":D
    .restart local v26    # "t1":D
    .restart local v28    # "c2":D
    :goto_2
    neg-double v2, v0

    .line 232
    :goto_3
    nop

    .line 256
    .local v2, "signedDelta":D
    mul-double v4, v16, v12

    mul-double v6, v12, v18

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    mul-double v10, v28, v14

    mul-double v6, v14, v18

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v10, v6

    add-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v4, v4, v6

    if-gez v4, :cond_9

    .line 257
    return-wide v18

    .line 259
    :cond_9
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 262
    .local v4, "tDelta":D
    const/4 v6, 0x0

    .line 263
    .local v6, "iterations":I
    :goto_4
    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v7, v4, v7

    if-lez v7, :cond_a

    const/16 v7, 0x64

    if-ge v6, v7, :cond_a

    .line 264
    add-int/lit8 v6, v6, 0x1

    .line 265
    move-wide/from16 v7, v18

    .line 266
    .local v7, "tLast":D
    const/4 v9, 0x0

    .line 367
    .local v9, "$i$f$iterateNewtonsMethod":I
    move-wide/from16 v10, v18

    .local v10, "t":D
    const/16 v22, 0x0

    .line 268
    .local v22, "$i$a$-iterateNewtonsMethod-SpringEstimationKt$estimateOverDamped$1":I
    mul-double v30, v12, v10

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->exp(D)D

    move-result-wide v30

    mul-double v30, v30, v16

    mul-double v32, v14, v10

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->exp(D)D

    move-result-wide v32

    mul-double v32, v32, v28

    add-double v30, v30, v32

    add-double v30, v30, v2

    .line 367
    .end local v10    # "t":D
    .end local v22    # "$i$a$-iterateNewtonsMethod-SpringEstimationKt$estimateOverDamped$1":I
    nop

    .restart local v10    # "t":D
    const/16 v22, 0x0

    .line 269
    .local v22, "$i$a$-iterateNewtonsMethod-SpringEstimationKt$estimateOverDamped$2":I
    mul-double v32, v16, v12

    mul-double v34, v12, v10

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->exp(D)D

    move-result-wide v34

    mul-double v32, v32, v34

    mul-double v34, v28, v14

    mul-double v36, v14, v10

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->exp(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    add-double v32, v32, v34

    .line 367
    .end local v10    # "t":D
    .end local v22    # "$i$a$-iterateNewtonsMethod-SpringEstimationKt$estimateOverDamped$2":I
    div-double v30, v30, v32

    sub-double v9, v18, v30

    .line 266
    .end local v9    # "$i$f$iterateNewtonsMethod":I
    move-wide/from16 v18, v9

    .line 271
    sub-double v9, v7, v18

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .end local v7    # "tLast":D
    goto :goto_4

    .line 274
    :cond_a
    return-wide v18
.end method

.method private static final estimateOverDamped$xInflection(DDDDD)D
    .locals 4
    .param p0, "c1"    # D
    .param p2, "r1"    # D
    .param p4, "tInflection"    # D
    .param p6, "c2"    # D
    .param p8, "r2"    # D

    .line 228
    mul-double v0, p2, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, p0

    mul-double v2, p8, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v2, p6

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static final estimateUnderDamped(Landroidx/compose/animation/core/ComplexDouble;DDD)D
    .locals 10
    .param p0, "firstRoot"    # Landroidx/compose/animation/core/ComplexDouble;
    .param p1, "p0"    # D
    .param p3, "v0"    # D
    .param p5, "delta"    # D

    .line 114
    invoke-virtual {p0}, Landroidx/compose/animation/core/ComplexDouble;->getReal()D

    move-result-wide v0

    .line 115
    .local v0, "r":D
    move-wide v2, p1

    .line 116
    .local v2, "c1":D
    mul-double v4, v0, v2

    sub-double v4, p3, v4

    invoke-virtual {p0}, Landroidx/compose/animation/core/ComplexDouble;->getImaginary()D

    move-result-wide v6

    div-double/2addr v4, v6

    .line 117
    .local v4, "c2":D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 119
    .local v6, "c":D
    div-double v8, p5, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v8, v0

    return-wide v8
.end method

.method private static final isNotFinite(D)Z
    .locals 3
    .param p0, "$this$isNotFinite"    # D

    const/4 v0, 0x0

    .line 328
    .local v0, "$i$f$isNotFinite":I
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v2

    return v1
.end method

.method private static final iterateNewtonsMethod(DLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)D
    .locals 5
    .param p0, "x"    # D
    .param p2, "fn"    # Lkotlin/jvm/functions/Function1;
    .param p3, "fnPrime"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    const/4 v0, 0x0

    .line 324
    .local v0, "$i$f$iterateNewtonsMethod":I
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    div-double/2addr v1, v3

    sub-double v1, p0, v1

    return-wide v1
.end method
