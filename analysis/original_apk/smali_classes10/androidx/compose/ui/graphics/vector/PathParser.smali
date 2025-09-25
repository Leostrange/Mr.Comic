.class public final Landroidx/compose/ui/graphics/vector/PathParser;
.super Ljava/lang/Object;
.source "PathParser.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPathParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathParser.kt\nandroidx/compose/ui/graphics/vector/PathParser\n+ 2 FastFloatParser.kt\nandroidx/compose/ui/graphics/vector/FastFloatParserKt\n+ 3 JvmFastFloatParser.jvm.kt\nandroidx/compose/ui/graphics/vector/JvmFastFloatParser_jvmKt\n*L\n1#1,555:1\n132#1,6:559\n150#1,2:565\n49#2:556\n50#2:557\n22#3:558\n*S KotlinDebug\n*F\n+ 1 PathParser.kt\nandroidx/compose/ui/graphics/vector/PathParser\n*L\n115#1:559,6\n123#1:565,2\n109#1:556\n110#1:557\n110#1:558\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J!\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fH\u0082\u0008J\u0014\u0010\u0010\u001a\u00020\u00002\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0011J\u0006\u0010\u0012\u001a\u00020\nJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0015J\u0011\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u000fH\u0082\u0008J\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0011J\u0010\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001aR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/vector/PathParser;",
        "",
        "()V",
        "nodeData",
        "",
        "nodes",
        "Ljava/util/ArrayList;",
        "Landroidx/compose/ui/graphics/vector/PathNode;",
        "Lkotlin/collections/ArrayList;",
        "addNodes",
        "",
        "cmd",
        "",
        "args",
        "count",
        "",
        "addPathNodes",
        "",
        "clear",
        "parsePathString",
        "pathData",
        "",
        "resizeNodeData",
        "dataCount",
        "toNodes",
        "toPath",
        "Landroidx/compose/ui/graphics/Path;",
        "target",
        "ui-graphics_release"
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
.field private nodeData:[F

.field private final nodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/ArrayList;

    .line 54
    const/16 v0, 0x40

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    .line 51
    return-void
.end method

.method private final addNodes(C[FI)V
    .locals 2
    .param p1, "cmd"    # C
    .param p2, "args"    # [F
    .param p3, "count"    # I

    const/4 v0, 0x0

    .line 150
    .local v0, "$i$f$addNodes":I
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/ArrayList;

    invoke-static {p1, v1, p2, p3}, Landroidx/compose/ui/graphics/vector/PathNodeKt;->addPathNodes(CLjava/util/ArrayList;[FI)V

    .line 151
    return-void
.end method

.method private final resizeNodeData(I)V
    .locals 5
    .param p1, "dataCount"    # I

    const/4 v0, 0x0

    .line 132
    .local v0, "$i$f$resizeNodeData":I
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 133
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    .line 134
    .local v1, "src":[F
    mul-int/lit8 v2, p1, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    .line 135
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v4, v3}, Lkotlin/collections/ArraysKt;->copyInto([F[FIII)[F

    .line 137
    .end local v1    # "src":[F
    :cond_0
    return-void
.end method

.method public static synthetic toPath$default(Landroidx/compose/ui/graphics/vector/PathParser;Landroidx/compose/ui/graphics/Path;ILjava/lang/Object;)Landroidx/compose/ui/graphics/Path;
    .locals 0

    .line 146
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->toPath(Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addPathNodes(Ljava/util/List;)Landroidx/compose/ui/graphics/vector/PathParser;
    .locals 2
    .param p1, "nodes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;)",
            "Landroidx/compose/ui/graphics/vector/PathParser;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 141
    return-object p0
.end method

.method public final clear()V
    .locals 1

    .line 57
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    return-void
.end method

.method public final parsePathString(Ljava/lang/String;)Landroidx/compose/ui/graphics/vector/PathParser;
    .locals 17
    .param p1, "pathData"    # Ljava/lang/String;

    .line 65
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 67
    const/4 v2, 0x0

    .line 68
    .local v2, "start":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 71
    .local v3, "end":I
    const/4 v4, 0x0

    .line 74
    .local v4, "dataCount":I
    :goto_0
    const/16 v5, 0x20

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gtz v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_0
    :goto_1
    if-le v3, v2, :cond_1

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gtz v6, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 77
    :cond_1
    move v6, v2

    .line 78
    .local v6, "index":I
    :goto_2
    if-ge v6, v3, :cond_c

    .line 79
    const/4 v7, 0x0

    .line 80
    .local v7, "c":C
    const/4 v8, 0x0

    .line 86
    .local v8, "command":C
    :goto_3
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "index":I
    .local v9, "index":I
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 87
    or-int/lit8 v6, v7, 0x20

    .line 88
    .local v6, "lowerChar":I
    add-int/lit8 v10, v6, -0x61

    add-int/lit8 v11, v6, -0x7a

    mul-int/2addr v10, v11

    if-gtz v10, :cond_2

    const/16 v10, 0x65

    if-eq v6, v10, :cond_2

    .line 89
    move v8, v7

    .line 90
    goto :goto_4

    .line 92
    .end local v6    # "lowerChar":I
    :cond_2
    if-lt v9, v3, :cond_b

    .line 95
    :goto_4
    if-eqz v8, :cond_a

    .line 98
    or-int/lit8 v6, v8, 0x20

    const/16 v10, 0x7a

    if-eq v6, v10, :cond_8

    .line 99
    const/4 v4, 0x0

    .line 103
    :goto_5
    if-ge v9, v3, :cond_3

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gtz v6, :cond_3

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 108
    :cond_3
    invoke-static {v1, v9, v3}, Landroidx/compose/ui/graphics/vector/FastFloatParserKt;->nextFloat(Ljava/lang/String;II)J

    move-result-wide v10

    .line 109
    .local v10, "result":J
    move-wide v12, v10

    .local v12, "$this$index$iv":J
    const/4 v6, 0x0

    .line 556
    .local v6, "$i$f$getIndex":I
    ushr-long v14, v12, v5

    long-to-int v6, v14

    .line 109
    .end local v6    # "$i$f$getIndex":I
    .end local v12    # "$this$index$iv":J
    nop

    .line 110
    .end local v9    # "index":I
    .local v6, "index":I
    nop

    .local v12, "$this$floatValue$iv":J
    const/4 v9, 0x0

    .line 557
    .local v9, "$i$f$getFloatValue":I
    const-wide v14, 0xffffffffL

    and-long/2addr v14, v12

    long-to-int v14, v14

    .local v14, "bits$iv$iv":I
    const/4 v15, 0x0

    .line 558
    .local v15, "$i$f$floatFromBits":I
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    .line 557
    .end local v14    # "bits$iv$iv":I
    .end local v15    # "$i$f$floatFromBits":I
    nop

    .line 110
    .end local v9    # "$i$f$getFloatValue":I
    .end local v12    # "$this$floatValue$iv":J
    move v9, v14

    .line 113
    .local v9, "value":F
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_5

    .line 114
    iget-object v12, v0, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    add-int/lit8 v13, v4, 0x1

    .end local v4    # "dataCount":I
    .local v13, "dataCount":I
    aput v9, v12, v4

    .line 115
    move-object/from16 v4, p0

    .local v4, "this_$iv":Landroidx/compose/ui/graphics/vector/PathParser;
    const/4 v12, 0x0

    .line 559
    .local v12, "$i$f$resizeNodeData":I
    iget-object v14, v4, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    array-length v14, v14

    if-lt v13, v14, :cond_4

    .line 560
    iget-object v14, v4, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    .line 561
    .local v14, "src$iv":[F
    mul-int/lit8 v15, v13, 0x2

    new-array v15, v15, [F

    iput-object v15, v4, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    .line 562
    iget-object v15, v4, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    array-length v5, v14

    move/from16 v16, v2

    .end local v2    # "start":I
    .local v16, "start":I
    const/4 v2, 0x0

    invoke-static {v14, v15, v2, v2, v5}, Lkotlin/collections/ArraysKt;->copyInto([F[FIII)[F

    goto :goto_6

    .line 559
    .end local v14    # "src$iv":[F
    .end local v16    # "start":I
    .restart local v2    # "start":I
    :cond_4
    move/from16 v16, v2

    .line 564
    .end local v2    # "start":I
    .restart local v16    # "start":I
    :goto_6
    move v4, v13

    goto :goto_7

    .line 113
    .end local v12    # "$i$f$resizeNodeData":I
    .end local v13    # "dataCount":I
    .end local v16    # "start":I
    .restart local v2    # "start":I
    .local v4, "dataCount":I
    :cond_5
    move/from16 v16, v2

    .line 119
    .end local v2    # "start":I
    .restart local v16    # "start":I
    :goto_7
    if-ge v6, v3, :cond_6

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x2c

    if-ne v2, v5, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 120
    .end local v10    # "result":J
    :cond_6
    if-ge v6, v3, :cond_9

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_8

    :cond_7
    move v9, v6

    move/from16 v2, v16

    const/16 v5, 0x20

    goto :goto_5

    .line 98
    .end local v6    # "index":I
    .end local v16    # "start":I
    .restart local v2    # "start":I
    .local v9, "index":I
    :cond_8
    move/from16 v16, v2

    .end local v2    # "start":I
    .restart local v16    # "start":I
    move v6, v9

    .line 123
    .end local v9    # "index":I
    .restart local v6    # "index":I
    :cond_9
    :goto_8
    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    .local v2, "args$iv":[F
    move-object/from16 v5, p0

    .local v5, "this_$iv":Landroidx/compose/ui/graphics/vector/PathParser;
    const/4 v9, 0x0

    .line 565
    .local v9, "$i$f$addNodes":I
    iget-object v10, v5, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/ArrayList;

    invoke-static {v8, v10, v2, v4}, Landroidx/compose/ui/graphics/vector/PathNodeKt;->addPathNodes(CLjava/util/ArrayList;[FI)V

    .line 566
    move/from16 v2, v16

    const/16 v5, 0x20

    .end local v2    # "args$iv":[F
    .end local v5    # "this_$iv":Landroidx/compose/ui/graphics/vector/PathParser;
    .end local v7    # "c":C
    .end local v8    # "command":C
    .end local v9    # "$i$f$addNodes":I
    goto/16 :goto_2

    .line 95
    .end local v6    # "index":I
    .end local v16    # "start":I
    .local v2, "start":I
    .restart local v7    # "c":C
    .restart local v8    # "command":C
    .local v9, "index":I
    :cond_a
    move/from16 v16, v2

    .end local v2    # "start":I
    .restart local v16    # "start":I
    move v6, v9

    const/16 v5, 0x20

    goto/16 :goto_2

    .line 92
    .end local v16    # "start":I
    .restart local v2    # "start":I
    :cond_b
    move/from16 v16, v2

    .end local v2    # "start":I
    .restart local v16    # "start":I
    move v6, v9

    const/16 v5, 0x20

    goto/16 :goto_3

    .line 127
    .end local v7    # "c":C
    .end local v8    # "command":C
    .end local v9    # "index":I
    .end local v16    # "start":I
    .restart local v2    # "start":I
    .restart local v6    # "index":I
    :cond_c
    return-object v0
.end method

.method public final toNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final toPath(Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;
    .locals 1
    .param p1, "target"    # Landroidx/compose/ui/graphics/Path;

    .line 146
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/vector/PathParserKt;->toPath(Ljava/util/List;Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    return-object v0
.end method
