.class public final Landroidx/compose/material3/ExposedDropdownMenu_androidKt;
.super Ljava/lang/Object;
.source "ExposedDropdownMenu.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExposedDropdownMenu.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExposedDropdownMenu.android.kt\nandroidx/compose/material3/ExposedDropdownMenu_androidKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Strings.android.kt\nandroidx/compose/material3/Strings$Companion\n+ 6 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 7 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 8 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 9 Composer.kt\nandroidx/compose/runtime/Updater\n+ 10 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 11 SnapshotIntState.kt\nandroidx/compose/runtime/SnapshotIntStateKt__SnapshotIntStateKt\n+ 12 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,1091:1\n74#2:1092\n74#2:1093\n74#2:1094\n1#3:1095\n1116#4,6:1096\n1116#4,6:1102\n1116#4,6:1108\n1116#4,6:1114\n1116#4,6:1122\n1116#4,6:1168\n1116#4,6:1174\n1116#4,6:1180\n56#5:1120\n58#5:1121\n68#6,6:1128\n74#6:1162\n78#6:1167\n78#7,11:1134\n91#7:1166\n456#8,8:1145\n464#8,3:1159\n467#8,3:1163\n3737#9,6:1153\n81#10:1186\n107#10,2:1187\n75#11:1189\n108#11,2:1190\n75#11:1192\n108#11,2:1193\n154#12:1195\n*S KotlinDebug\n*F\n+ 1 ExposedDropdownMenu.android.kt\nandroidx/compose/material3/ExposedDropdownMenu_androidKt\n*L\n117#1:1092\n118#1:1093\n119#1:1094\n123#1:1096,6\n124#1:1102,6\n125#1:1108,6\n127#1:1114,6\n131#1:1122,6\n172#1:1168,6\n181#1:1174,6\n194#1:1180,6\n128#1:1120\n129#1:1121\n167#1:1128,6\n167#1:1162\n167#1:1167\n167#1:1134,11\n167#1:1166\n167#1:1145,8\n167#1:1159,3\n167#1:1163,3\n167#1:1153,6\n123#1:1186\n123#1:1187,2\n124#1:1189\n124#1:1190,2\n125#1:1192\n125#1:1193,2\n1090#1:1195\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001aQ\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00040\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u001c\u0010\u000b\u001a\u0018\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00040\u0008\u00a2\u0006\u0002\u0008\r\u00a2\u0006\u0002\u0008\u000eH\u0007\u00a2\u0006\u0002\u0010\u000f\u001a+\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0016H\u0003\u00a2\u0006\u0002\u0010\u0017\u001a\"\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001d\u001a\u00020\u0019H\u0002\u001a2\u0010\u001e\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00162\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 H\u0002\u001a\u000e\u0010\"\u001a\u00020\u001b*\u0004\u0018\u00010#H\u0002\u001a\u000c\u0010$\u001a\u00020\u001b*\u00020\u0012H\u0002\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\u00a8\u0006%\u00b2\u0006\u000c\u0010&\u001a\u0004\u0018\u00010#X\u008a\u008e\u0002\u00b2\u0006\n\u0010\'\u001a\u00020\u0019X\u008a\u008e\u0002\u00b2\u0006\n\u0010(\u001a\u00020\u0019X\u008a\u008e\u0002"
    }
    d2 = {
        "ExposedDropdownMenuItemHorizontalPadding",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "ExposedDropdownMenuBox",
        "",
        "expanded",
        "",
        "onExpandedChange",
        "Lkotlin/Function1;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "content",
        "Landroidx/compose/material3/ExposedDropdownMenuBoxScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "SoftKeyboardListener",
        "view",
        "Landroid/view/View;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "onKeyboardVisibilityChange",
        "Lkotlin/Function0;",
        "(Landroid/view/View;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V",
        "calculateMaxHeight",
        "",
        "windowBounds",
        "Landroidx/compose/ui/geometry/Rect;",
        "anchorBounds",
        "verticalMargin",
        "expandable",
        "expandedDescription",
        "",
        "collapsedDescription",
        "getAnchorBounds",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "getWindowBounds",
        "material3_release",
        "anchorCoordinates",
        "anchorWidth",
        "menuMaxHeight"
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
.field private static final ExposedDropdownMenuItemHorizontalPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1090
    const/16 v0, 0x10

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1195
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 1090
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->ExposedDropdownMenuItemHorizontalPadding:F

    return-void
.end method

.method public static final ExposedDropdownMenuBox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 41
    .param p0, "expanded"    # Z
    .param p1, "onExpandedChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "content"    # Lkotlin/jvm/functions/Function3;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material3/ExposedDropdownMenuBoxScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 116
    move/from16 v11, p0

    move-object/from16 v12, p3

    move/from16 v13, p5

    const v0, 0x7b3cc390

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(ExposedDropdownMenuBox)P(1,3,2)116@5545L7,117@5578L7,118@5617L7,122@5730L53,123@5807L33,124@5866L33,126@5926L29,127@5986L31,128@6049L32,130@6099L1761,166@7866L45,180@8254L59,180@8243L70:ExposedDropdownMenu.android.kt#uh7d8r"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p5

    .local v1, "$dirty":I
    and-int/lit8 v2, p6, 0x1

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v13, 0x6

    if-nez v2, :cond_2

    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    or-int/2addr v1, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v10, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v13, 0x30

    if-nez v2, :cond_5

    move-object/from16 v10, p1

    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    goto :goto_3

    :cond_5
    move-object/from16 v10, p1

    :goto_3
    and-int/lit8 v2, p6, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v5, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v13, 0x180

    if-nez v5, :cond_8

    move-object/from16 v5, p2

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v1, v6

    goto :goto_5

    :cond_8
    move-object/from16 v5, p2

    :goto_5
    and-int/lit8 v6, p6, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v6, v13, 0xc00

    if-nez v6, :cond_b

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x800

    goto :goto_6

    :cond_a
    const/16 v6, 0x400

    :goto_6
    or-int/2addr v1, v6

    :cond_b
    :goto_7
    move v9, v1

    .end local v1    # "$dirty":I
    .local v9, "$dirty":I
    and-int/lit16 v1, v9, 0x493

    const/16 v6, 0x492

    if-ne v1, v6, :cond_d

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_8

    .line 184
    :cond_c
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v16, v5

    move/from16 v34, v9

    goto/16 :goto_1b

    .line 116
    :cond_d
    :goto_8
    if-eqz v2, :cond_e

    .line 114
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v16, v1

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_9

    .line 116
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_e
    move-object/from16 v16, v5

    .line 114
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 116
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.ExposedDropdownMenuBox (ExposedDropdownMenu.android.kt:115)"

    invoke-static {v0, v9, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 117
    :cond_f
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .line 1092
    .local v2, "$i$f$getCurrent":I
    const v5, 0x789c5f52

    const-string v6, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v14, v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 117
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    move-object v8, v7

    check-cast v8, Landroid/content/res/Configuration;

    .line 118
    .local v8, "config":Landroid/content/res/Configuration;
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .restart local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .restart local v1    # "$changed$iv":I
    const/4 v2, 0x0

    .line 1093
    .restart local v2    # "$i$f$getCurrent":I
    invoke-static {v14, v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 118
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    check-cast v7, Landroid/view/View;

    .line 119
    .local v7, "view":Landroid/view/View;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .restart local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .restart local v1    # "$changed$iv":I
    const/4 v2, 0x0

    .line 1094
    .restart local v2    # "$i$f$getCurrent":I
    invoke-static {v14, v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 119
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/unit/Density;

    .line 121
    .local v6, "density":Landroidx/compose/ui/unit/Density;
    move-object v0, v6

    .line 1095
    .local v0, "$this$ExposedDropdownMenuBox_u24lambda_u240":Landroidx/compose/ui/unit/Density;
    const/4 v1, 0x0

    .line 121
    .local v1, "$i$a$-with-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$verticalMargin$1":I
    invoke-static {}, Landroidx/compose/material3/MenuKt;->getMenuVerticalMargin()F

    move-result v2

    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v5

    .end local v0    # "$this$ExposedDropdownMenuBox_u24lambda_u240":Landroidx/compose/ui/unit/Density;
    .end local v1    # "$i$a$-with-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$verticalMargin$1":I
    .local v5, "verticalMargin":I
    const v0, 0x3aa03f24

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember):ExposedDropdownMenu.android.kt#9igjgp"

    invoke-static {v14, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 123
    const/4 v1, 0x0

    move v0, v1

    .local v0, "invalid$iv":Z
    move-object/from16 p2, v14

    .local p2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 1096
    .local v17, "$i$f$cache":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 1097
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v4, v15, :cond_10

    .line 1098
    const/4 v15, 0x0

    .line 123
    .local v15, "$i$a$-cache-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$anchorCoordinates$2":I
    const/4 v1, 0x0

    invoke-static {v1, v1, v3, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    .line 1098
    .end local v15    # "$i$a$-cache-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$anchorCoordinates$2":I
    nop

    .line 1099
    .local v1, "value$iv":Ljava/lang/Object;
    move-object/from16 v3, p2

    .end local p2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1100
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_a

    .line 1101
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .restart local p2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    :cond_10
    move-object/from16 v3, p2

    .end local p2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .restart local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move-object v1, v4

    .line 1097
    :goto_a
    nop

    .line 1096
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 123
    .end local v0    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache":I
    move-object v15, v1

    check-cast v15, Landroidx/compose/runtime/MutableState;

    .local v15, "anchorCoordinates$delegate":Landroidx/compose/runtime/MutableState;
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v0, 0x3aa03f71

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v14, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 124
    move-object v0, v14

    const/4 v1, 0x0

    .local v0, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move v3, v1

    .local v3, "invalid$iv":Z
    const/4 v1, 0x0

    .line 1102
    .local v1, "$i$f$cache":I
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 1103
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p2, v1

    .end local v1    # "$i$f$cache":I
    .local p2, "$i$f$cache":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v4, v1, :cond_11

    .line 1104
    const/4 v1, 0x0

    .line 124
    .local v1, "$i$a$-cache-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$anchorWidth$2":I
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v1

    .line 1104
    .end local v1    # "$i$a$-cache-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$anchorWidth$2":I
    nop

    .line 1105
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1106
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_b

    .line 1107
    :cond_11
    move-object v1, v4

    .line 1103
    :goto_b
    nop

    .line 1102
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 124
    .end local v0    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "invalid$iv":Z
    .end local p2    # "$i$f$cache":I
    move-object/from16 v17, v1

    check-cast v17, Landroidx/compose/runtime/MutableIntState;

    .local v17, "anchorWidth$delegate":Landroidx/compose/runtime/MutableIntState;
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v0, 0x3aa03fac

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v14, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 125
    move-object v0, v14

    const/4 v1, 0x0

    .restart local v0    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move v3, v1

    .restart local v3    # "invalid$iv":Z
    const/4 v1, 0x0

    .line 1108
    .local v1, "$i$f$cache":I
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 1109
    .restart local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p2, v1

    .end local v1    # "$i$f$cache":I
    .restart local p2    # "$i$f$cache":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v4, v1, :cond_12

    .line 1110
    const/4 v1, 0x0

    .line 125
    .local v1, "$i$a$-cache-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$menuMaxHeight$2":I
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v1

    .line 1110
    .end local v1    # "$i$a$-cache-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$menuMaxHeight$2":I
    nop

    .line 1111
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1112
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_c

    .line 1113
    :cond_12
    move-object v1, v4

    .line 1109
    :goto_c
    nop

    .line 1108
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 125
    .end local v0    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "invalid$iv":Z
    .end local p2    # "$i$f$cache":I
    move-object v4, v1

    check-cast v4, Landroidx/compose/runtime/MutableIntState;

    .local v4, "menuMaxHeight$delegate":Landroidx/compose/runtime/MutableIntState;
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v0, 0x3aa03fe8

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v14, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 127
    move-object v0, v14

    const/4 v1, 0x0

    .restart local v0    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move v3, v1

    .restart local v3    # "invalid$iv":Z
    const/4 v1, 0x0

    .line 1114
    .local v1, "$i$f$cache":I
    move/from16 p2, v1

    .end local v1    # "$i$f$cache":I
    .restart local p2    # "$i$f$cache":I
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 1115
    .restart local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v22, v3

    .end local v3    # "invalid$iv":Z
    .local v22, "invalid$iv":Z
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_13

    .line 1116
    const/4 v3, 0x0

    .line 127
    .local v3, "$i$a$-cache-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$focusRequester$1":I
    new-instance v21, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct/range {v21 .. v21}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 1116
    .end local v3    # "$i$a$-cache-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$focusRequester$1":I
    move-object/from16 v3, v21

    .line 1117
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1118
    nop

    .end local v3    # "value$iv":Ljava/lang/Object;
    goto :goto_d

    .line 1119
    :cond_13
    move-object v3, v1

    .line 1115
    :goto_d
    nop

    .line 1114
    .end local v1    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 127
    .end local v0    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "invalid$iv":Z
    .end local p2    # "$i$f$cache":I
    check-cast v3, Landroidx/compose/ui/focus/FocusRequester;

    .local v3, "focusRequester":Landroidx/compose/ui/focus/FocusRequester;
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 128
    sget-object v0, Landroidx/compose/material3/Strings;->Companion:Landroidx/compose/material3/Strings$Companion;

    .local v0, "this_$iv":Landroidx/compose/material3/Strings$Companion;
    const/4 v1, 0x0

    .line 1120
    .local v1, "$i$f$getMenuExpanded-adMyvUU":I
    sget v18, Landroidx/compose/material3/R$string;->m3c_dropdown_menu_expanded:I

    invoke-static/range {v18 .. v18}, Landroidx/compose/material3/Strings;->constructor-impl(I)I

    move-result v0

    .line 128
    .end local v0    # "this_$iv":Landroidx/compose/material3/Strings$Companion;
    .end local v1    # "$i$f$getMenuExpanded-adMyvUU":I
    const/4 v1, 0x0

    invoke-static {v0, v14, v1}, Landroidx/compose/material3/Strings_androidKt;->getString-NWtq2-8(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v18

    .line 129
    .local v18, "expandedDescription":Ljava/lang/String;
    sget-object v0, Landroidx/compose/material3/Strings;->Companion:Landroidx/compose/material3/Strings$Companion;

    .restart local v0    # "this_$iv":Landroidx/compose/material3/Strings$Companion;
    const/16 v19, 0x0

    .line 1121
    .local v19, "$i$f$getMenuCollapsed-adMyvUU":I
    sget v21, Landroidx/compose/material3/R$string;->m3c_dropdown_menu_collapsed:I

    invoke-static/range {v21 .. v21}, Landroidx/compose/material3/Strings;->constructor-impl(I)I

    move-result v0

    .line 129
    .end local v0    # "this_$iv":Landroidx/compose/material3/Strings$Companion;
    .end local v19    # "$i$f$getMenuCollapsed-adMyvUU":I
    invoke-static {v0, v14, v1}, Landroidx/compose/material3/Strings_androidKt;->getString-NWtq2-8(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v19

    .local v19, "collapsedDescription":Ljava/lang/String;
    const v0, 0x3aa04095

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v14, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v9, 0xe

    const/16 v21, 0x1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    move/from16 v1, v21

    goto :goto_e

    :cond_14
    const/4 v1, 0x0

    :goto_e
    and-int/lit8 v0, v9, 0x70

    move-object/from16 p2, v2

    const/16 v2, 0x20

    if-ne v0, v2, :cond_15

    move/from16 v0, v21

    goto :goto_f

    :cond_15
    const/4 v0, 0x0

    :goto_f
    or-int/2addr v0, v1

    .line 131
    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int v23, v0, v1

    .local v23, "invalid$iv":Z
    move-object v2, v14

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 1122
    .local v24, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v25, 0x0

    .line 1123
    .local v25, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v23, :cond_17

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_16

    goto :goto_10

    .line 1127
    :cond_16
    move-object/from16 v28, p2

    move-object/from16 v22, v1

    move-object v13, v2

    move-object/from16 p2, v3

    move-object/from16 v29, v4

    move/from16 v30, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v33, v8

    move/from16 v34, v9

    goto :goto_11

    .line 1124
    :cond_17
    :goto_10
    const/16 v26, 0x0

    .line 132
    .local v26, "$i$a$-cache-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1":I
    new-instance v27, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;

    move-object/from16 v0, v27

    move-object/from16 v22, v1

    const/4 v13, 0x0

    .end local v1    # "it$iv":Ljava/lang/Object;
    .local v22, "it$iv":Ljava/lang/Object;
    move/from16 v1, p0

    move-object/from16 v28, p2

    move-object v13, v2

    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v13, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move-object/from16 v2, v18

    move-object/from16 p2, v3

    .end local v3    # "focusRequester":Landroidx/compose/ui/focus/FocusRequester;
    .local p2, "focusRequester":Landroidx/compose/ui/focus/FocusRequester;
    move-object/from16 v3, v19

    move-object/from16 v29, v4

    .end local v4    # "menuMaxHeight$delegate":Landroidx/compose/runtime/MutableIntState;
    .local v29, "menuMaxHeight$delegate":Landroidx/compose/runtime/MutableIntState;
    move-object/from16 v4, p2

    move/from16 v30, v5

    .end local v5    # "verticalMargin":I
    .local v30, "verticalMargin":I
    move-object v5, v7

    move-object/from16 v31, v6

    .end local v6    # "density":Landroidx/compose/ui/unit/Density;
    .local v31, "density":Landroidx/compose/ui/unit/Density;
    move/from16 v6, v30

    move-object/from16 v32, v7

    .end local v7    # "view":Landroid/view/View;
    .local v32, "view":Landroid/view/View;
    move-object v7, v15

    move-object/from16 v33, v8

    .end local v8    # "config":Landroid/content/res/Configuration;
    .local v33, "config":Landroid/content/res/Configuration;
    move-object/from16 v8, v17

    move/from16 v34, v9

    .end local v9    # "$dirty":I
    .local v34, "$dirty":I
    move-object/from16 v9, v29

    move-object/from16 v10, p1

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;-><init>(ZLjava/lang/String;Ljava/lang/String;Landroidx/compose/ui/focus/FocusRequester;Landroid/view/View;ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Lkotlin/jvm/functions/Function1;)V

    .line 1124
    .end local v26    # "$i$a$-cache-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1":I
    move-object/from16 v1, v27

    .line 1125
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1126
    nop

    .line 1123
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_11
    nop

    .line 1122
    .end local v22    # "it$iv":Ljava/lang/Object;
    .end local v25    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 131
    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v23    # "invalid$iv":Z
    .end local v24    # "$i$f$cache":I
    move-object v0, v1

    check-cast v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;

    .local v0, "scope":Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    shr-int/lit8 v1, v34, 0x6

    and-int/lit8 v1, v1, 0xe

    .line 167
    nop

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$Box":I
    const v3, 0x2bb5b5d7

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v14, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1128
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v3

    .line 1129
    .local v3, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v4, 0x0

    .line 1132
    .local v4, "propagateMinConstraints$iv":Z
    shr-int/lit8 v5, v1, 0x3

    and-int/lit8 v5, v5, 0xe

    shr-int/lit8 v6, v1, 0x3

    and-int/lit8 v6, v6, 0x70

    or-int/2addr v5, v6

    invoke-static {v3, v4, v14, v5}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    .local v5, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v6, v1, 0x3

    and-int/lit8 v6, v6, 0x70

    .line 1133
    nop

    .local v6, "$changed$iv$iv":I
    const/4 v7, 0x0

    .local v7, "$i$f$Layout":I
    const v8, -0x4ee9b9da

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v8, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v14, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1134
    const/4 v8, 0x0

    invoke-static {v14, v8}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v9

    .line 1135
    .local v9, "compositeKeyHash$iv$iv":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v8

    .line 1137
    .local v8, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v10

    .line 1144
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v13

    move/from16 v22, v2

    .end local v2    # "$i$f$Box":I
    .local v22, "$i$f$Box":I
    shl-int/lit8 v2, v6, 0x9

    and-int/lit16 v2, v2, 0x1c00

    or-int/lit8 v2, v2, 0x6

    .line 1136
    nop

    .local v2, "$changed$iv$iv$iv":I
    .local v10, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v13, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v23, 0x0

    .line 1145
    .local v23, "$i$f$ReusableComposeNode":I
    move-object/from16 v24, v3

    .end local v3    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v24, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1146
    :cond_18
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1147
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1148
    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    .line 1150
    :cond_19
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1152
    :goto_12
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 1139
    .local v25, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v26, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v27, v4

    .end local v4    # "propagateMinConstraints$iv":Z
    .local v27, "propagateMinConstraints$iv":Z
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v5, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1140
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v8, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1142
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .local v4, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v26, 0x0

    .line 1153
    .local v26, "$i$f$set-impl":I
    move-object/from16 v35, v3

    .local v35, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v36, 0x0

    .line 1154
    .local v36, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v35 .. v35}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v37

    if-nez v37, :cond_1b

    move-object/from16 v37, v5

    .end local v5    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v37, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v35 .. v35}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    move/from16 v38, v6

    .end local v6    # "$changed$iv$iv":I
    .local v38, "$changed$iv$iv":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    goto :goto_13

    :cond_1a
    move-object/from16 v6, v35

    goto :goto_14

    .end local v37    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v38    # "$changed$iv$iv":I
    .restart local v5    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v6    # "$changed$iv$iv":I
    :cond_1b
    move-object/from16 v37, v5

    move/from16 v38, v6

    .line 1155
    .end local v5    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v6    # "$changed$iv$iv":I
    .restart local v37    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v38    # "$changed$iv$iv":I
    :goto_13
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, v35

    .end local v35    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v6, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1156
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1158
    :goto_14
    nop

    .line 1153
    .end local v6    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v36    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 1158
    nop

    .line 1143
    .end local v4    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v26    # "$i$f$set-impl":I
    nop

    .line 1152
    .end local v3    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 1159
    invoke-static {v14}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v3

    shr-int/lit8 v4, v2, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v13, v3, v14, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    const v3, 0x7ab4aae9

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1161
    shr-int/lit8 v3, v2, 0x9

    and-int/lit8 v3, v3, 0xe

    .local v3, "$changed$iv":I
    move-object v4, v14

    .local v4, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 1162
    .local v5, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v6, -0x4ab8dd4f

    move/from16 v25, v2

    .end local v2    # "$changed$iv$iv$iv":I
    .local v25, "$changed$iv$iv$iv":I
    const-string v2, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v4, v6, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x70

    or-int/lit8 v6, v6, 0x6

    .local v6, "$changed":I
    check-cast v2, Landroidx/compose/foundation/layout/BoxScope;

    .local v2, "$this$ExposedDropdownMenuBox_u24lambda_u2412":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v26, v4

    .local v26, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v35, 0x0

    .line 168
    .local v35, "$i$a$-Box-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$1":I
    move/from16 v36, v1

    .end local v1    # "$changed$iv":I
    .local v36, "$changed$iv":I
    const v1, 0x3be636b5

    move-object/from16 v39, v2

    .end local v2    # "$this$ExposedDropdownMenuBox_u24lambda_u2412":Landroidx/compose/foundation/layout/BoxScope;
    .local v39, "$this$ExposedDropdownMenuBox_u24lambda_u2412":Landroidx/compose/foundation/layout/BoxScope;
    const-string v2, "C167@7896L9:ExposedDropdownMenu.android.kt#uh7d8r"

    move/from16 v40, v3

    move-object/from16 v3, v26

    .end local v26    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    .local v40, "$changed$iv":I
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    shr-int/lit8 v1, v34, 0x6

    and-int/lit8 v1, v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v0, v3, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 169
    nop

    .line 1162
    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v6    # "$changed":I
    .end local v35    # "$i$a$-Box-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$1":I
    .end local v39    # "$this$ExposedDropdownMenuBox_u24lambda_u2412":Landroidx/compose/foundation/layout/BoxScope;
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1161
    .end local v4    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v40    # "$changed$iv":I
    nop

    .line 1163
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1164
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1165
    nop

    .end local v10    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v13    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v23    # "$i$f$ReusableComposeNode":I
    .end local v25    # "$changed$iv$iv$iv":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1166
    nop

    .end local v7    # "$i$f$Layout":I
    .end local v8    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v9    # "compositeKeyHash$iv$iv":I
    .end local v38    # "$changed$iv$iv":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1167
    nop

    .end local v22    # "$i$f$Box":I
    .end local v24    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v27    # "propagateMinConstraints$iv":Z
    .end local v36    # "$changed$iv":I
    .end local v37    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    const v1, 0x3aa047af

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "171@7977L254,171@7941L290"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 171
    if-eqz v11, :cond_1e

    .line 172
    const v1, 0x3aa047eb

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v1, v28

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move-object/from16 v2, v32

    .end local v32    # "view":Landroid/view/View;
    .local v2, "view":Landroid/view/View;
    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    move/from16 v4, v30

    .end local v30    # "verticalMargin":I
    .local v4, "verticalMargin":I
    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v5

    or-int/2addr v3, v5

    .local v3, "invalid$iv":Z
    move-object v5, v14

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 1168
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 1169
    .local v8, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_1d

    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v7, v9, :cond_1c

    goto :goto_15

    .line 1173
    :cond_1c
    move-object v9, v7

    move-object/from16 v13, v29

    goto :goto_16

    .line 1170
    :cond_1d
    :goto_15
    const/4 v9, 0x0

    .line 172
    .local v9, "$i$a$-cache-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$2":I
    new-instance v10, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$2$1;

    move-object/from16 v13, v29

    .end local v29    # "menuMaxHeight$delegate":Landroidx/compose/runtime/MutableIntState;
    .local v13, "menuMaxHeight$delegate":Landroidx/compose/runtime/MutableIntState;
    invoke-direct {v10, v2, v4, v15, v13}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$2$1;-><init>(Landroid/view/View;ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;)V

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 1170
    .end local v9    # "$i$a$-cache-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$2":I
    move-object v9, v10

    .line 1171
    .local v9, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1172
    nop

    .line 1169
    .end local v9    # "value$iv":Ljava/lang/Object;
    :goto_16
    nop

    .line 1168
    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 172
    .end local v3    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object/from16 v3, v31

    const/4 v5, 0x0

    .end local v31    # "density":Landroidx/compose/ui/unit/Density;
    .local v3, "density":Landroidx/compose/ui/unit/Density;
    invoke-static {v2, v3, v9, v14, v5}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->SoftKeyboardListener(Landroid/view/View;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_17

    .line 171
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "density":Landroidx/compose/ui/unit/Density;
    .end local v4    # "verticalMargin":I
    .end local v13    # "menuMaxHeight$delegate":Landroidx/compose/runtime/MutableIntState;
    .restart local v29    # "menuMaxHeight$delegate":Landroidx/compose/runtime/MutableIntState;
    .restart local v30    # "verticalMargin":I
    .restart local v31    # "density":Landroidx/compose/ui/unit/Density;
    .restart local v32    # "view":Landroid/view/View;
    :cond_1e
    move-object/from16 v1, v28

    move-object/from16 v13, v29

    move/from16 v4, v30

    move-object/from16 v3, v31

    move-object/from16 v2, v32

    .line 172
    .end local v29    # "menuMaxHeight$delegate":Landroidx/compose/runtime/MutableIntState;
    .end local v30    # "verticalMargin":I
    .end local v31    # "density":Landroidx/compose/ui/unit/Density;
    .end local v32    # "view":Landroid/view/View;
    .restart local v2    # "view":Landroid/view/View;
    .restart local v3    # "density":Landroidx/compose/ui/unit/Density;
    .restart local v4    # "verticalMargin":I
    .restart local v13    # "menuMaxHeight$delegate":Landroidx/compose/runtime/MutableIntState;
    :goto_17
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v5, 0x3aa04900

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v34, 0xe

    const/4 v5, 0x4

    if-ne v1, v5, :cond_1f

    move/from16 v1, v21

    goto :goto_18

    :cond_1f
    const/4 v1, 0x0

    .line 181
    :goto_18
    nop

    .local v1, "invalid$iv":Z
    move-object v5, v14

    .restart local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 1174
    .restart local v6    # "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 1175
    .restart local v8    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_21

    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v7, v9, :cond_20

    goto :goto_19

    .line 1179
    :cond_20
    move-object/from16 v20, v0

    move-object v9, v7

    move-object/from16 v0, p2

    goto :goto_1a

    .line 1176
    :cond_21
    :goto_19
    const/4 v9, 0x0

    .line 181
    .local v9, "$i$a$-cache-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$3":I
    new-instance v10, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$3$1;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    .end local p2    # "focusRequester":Landroidx/compose/ui/focus/FocusRequester;
    .local v0, "focusRequester":Landroidx/compose/ui/focus/FocusRequester;
    .local v20, "scope":Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;
    invoke-direct {v10, v11, v0}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$3$1;-><init>(ZLandroidx/compose/ui/focus/FocusRequester;)V

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 1176
    .end local v9    # "$i$a$-cache-ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$3":I
    move-object v9, v10

    .line 1177
    .local v9, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1178
    nop

    .line 1175
    .end local v9    # "value$iv":Ljava/lang/Object;
    :goto_1a
    nop

    .line 1174
    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 181
    .end local v1    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v1, 0x0

    invoke-static {v9, v14, v1}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 184
    .end local v0    # "focusRequester":Landroidx/compose/ui/focus/FocusRequester;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "density":Landroidx/compose/ui/unit/Density;
    .end local v4    # "verticalMargin":I
    .end local v13    # "menuMaxHeight$delegate":Landroidx/compose/runtime/MutableIntState;
    .end local v15    # "anchorCoordinates$delegate":Landroidx/compose/runtime/MutableState;
    .end local v17    # "anchorWidth$delegate":Landroidx/compose/runtime/MutableIntState;
    .end local v18    # "expandedDescription":Ljava/lang/String;
    .end local v19    # "collapsedDescription":Ljava/lang/String;
    .end local v20    # "scope":Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;
    .end local v33    # "config":Landroid/content/res/Configuration;
    :cond_22
    :goto_1b
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_23

    new-instance v8, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$4;

    move-object v0, v8

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$4;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;II)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_23
    return-void
.end method

.method private static final ExposedDropdownMenuBox$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 4
    .param p0, "$anchorCoordinates$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;)",
            "Landroidx/compose/ui/layout/LayoutCoordinates;"
        }
    .end annotation

    .line 123
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 1186
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 123
    return-object v0
.end method

.method private static final ExposedDropdownMenuBox$lambda$3(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 4
    .param p0, "$anchorCoordinates$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ")V"
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v3, 0x0

    .line 1187
    .local v3, "$i$f$setValue":I
    invoke-interface {v2, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1188
    nop

    .line 123
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private static final ExposedDropdownMenuBox$lambda$5(Landroidx/compose/runtime/MutableIntState;)I
    .locals 4
    .param p0, "$anchorWidth$delegate"    # Landroidx/compose/runtime/MutableIntState;

    .line 124
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/IntState;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 1189
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result v0

    .line 124
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    return v0
.end method

.method private static final ExposedDropdownMenuBox$lambda$6(Landroidx/compose/runtime/MutableIntState;I)V
    .locals 4
    .param p0, "$anchorWidth$delegate"    # Landroidx/compose/runtime/MutableIntState;
    .param p1, "value"    # I

    .line 124
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    const/4 v3, 0x0

    .line 1190
    .local v3, "$i$f$setValue":I
    invoke-interface {v2, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    .line 1191
    nop

    .line 124
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private static final ExposedDropdownMenuBox$lambda$8(Landroidx/compose/runtime/MutableIntState;)I
    .locals 4
    .param p0, "$menuMaxHeight$delegate"    # Landroidx/compose/runtime/MutableIntState;

    .line 125
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/IntState;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 1192
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result v0

    .line 125
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    return v0
.end method

.method private static final ExposedDropdownMenuBox$lambda$9(Landroidx/compose/runtime/MutableIntState;I)V
    .locals 4
    .param p0, "$menuMaxHeight$delegate"    # Landroidx/compose/runtime/MutableIntState;
    .param p1, "value"    # I

    .line 125
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    const/4 v3, 0x0

    .line 1193
    .local v3, "$i$f$setValue":I
    invoke-interface {v2, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    .line 1194
    nop

    .line 125
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private static final SoftKeyboardListener(Landroid/view/View;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "density"    # Landroidx/compose/ui/unit/Density;
    .param p2, "onKeyboardVisibilityChange"    # Lkotlin/jvm/functions/Function0;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/compose/ui/unit/Density;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 191
    const v0, -0x4ea650a8

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p3

    const-string v1, "C(SoftKeyboardListener)P(2)193@8669L1413,193@8637L1445:ExposedDropdownMenu.android.kt#uh7d8r"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v1, p4

    .local v1, "$dirty":I
    and-int/lit8 v2, p4, 0x6

    if-nez v2, :cond_1

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, p4, 0x30

    if-nez v2, :cond_3

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, p4, 0x180

    const/16 v3, 0x100

    if-nez v2, :cond_5

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v1, 0x93

    const/16 v4, 0x92

    if-ne v2, v4, :cond_7

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    .line 223
    :cond_6
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_7

    .line 191
    :cond_7
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    const-string/jumbo v4, "androidx.compose.material3.SoftKeyboardListener (ExposedDropdownMenu.android.kt:190)"

    invoke-static {v0, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 194
    :cond_8
    const v0, -0x1d4fc18b

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):ExposedDropdownMenu.android.kt#9igjgp"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    and-int/lit16 v2, v1, 0x380

    if-ne v2, v3, :cond_9

    const/4 v2, 0x1

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_4
    or-int/2addr v0, v2

    .local v0, "invalid$iv":Z
    move-object v2, p3

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 1180
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1181
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_b

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_a

    goto :goto_5

    .line 1185
    :cond_a
    move-object v6, v4

    goto :goto_6

    .line 1182
    :cond_b
    :goto_5
    const/4 v6, 0x0

    .line 194
    .local v6, "$i$a$-cache-ExposedDropdownMenu_androidKt$SoftKeyboardListener$1":I
    new-instance v7, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$SoftKeyboardListener$1$1;

    invoke-direct {v7, p0, p2}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$SoftKeyboardListener$1$1;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 1182
    .end local v6    # "$i$a$-cache-ExposedDropdownMenu_androidKt$SoftKeyboardListener$1":I
    move-object v6, v7

    .line 1183
    .local v6, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1184
    nop

    .line 1181
    .end local v6    # "value$iv":Ljava/lang/Object;
    :goto_6
    nop

    .line 1180
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 194
    .end local v0    # "invalid$iv":Z
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    and-int/lit8 v0, v1, 0xe

    and-int/lit8 v2, v1, 0x70

    or-int/2addr v0, v2

    invoke-static {p0, p1, v6, p3, v0}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 223
    :cond_c
    :goto_7
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_d

    new-instance v2, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$SoftKeyboardListener$2;

    invoke-direct {v2, p0, p1, p2, p4}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$SoftKeyboardListener$2;-><init>(Landroid/view/View;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function0;I)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_d
    return-void
.end method

.method public static final synthetic access$ExposedDropdownMenuBox$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1
    .param p0, "$anchorCoordinates$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 1
    invoke-static {p0}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->ExposedDropdownMenuBox$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$ExposedDropdownMenuBox$lambda$3(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0
    .param p0, "$anchorCoordinates$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->ExposedDropdownMenuBox$lambda$3(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/layout/LayoutCoordinates;)V

    return-void
.end method

.method public static final synthetic access$ExposedDropdownMenuBox$lambda$5(Landroidx/compose/runtime/MutableIntState;)I
    .locals 1
    .param p0, "$anchorWidth$delegate"    # Landroidx/compose/runtime/MutableIntState;

    .line 1
    invoke-static {p0}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->ExposedDropdownMenuBox$lambda$5(Landroidx/compose/runtime/MutableIntState;)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$ExposedDropdownMenuBox$lambda$6(Landroidx/compose/runtime/MutableIntState;I)V
    .locals 0
    .param p0, "$anchorWidth$delegate"    # Landroidx/compose/runtime/MutableIntState;
    .param p1, "value"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->ExposedDropdownMenuBox$lambda$6(Landroidx/compose/runtime/MutableIntState;I)V

    return-void
.end method

.method public static final synthetic access$ExposedDropdownMenuBox$lambda$8(Landroidx/compose/runtime/MutableIntState;)I
    .locals 1
    .param p0, "$menuMaxHeight$delegate"    # Landroidx/compose/runtime/MutableIntState;

    .line 1
    invoke-static {p0}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->ExposedDropdownMenuBox$lambda$8(Landroidx/compose/runtime/MutableIntState;)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$ExposedDropdownMenuBox$lambda$9(Landroidx/compose/runtime/MutableIntState;I)V
    .locals 0
    .param p0, "$menuMaxHeight$delegate"    # Landroidx/compose/runtime/MutableIntState;
    .param p1, "value"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->ExposedDropdownMenuBox$lambda$9(Landroidx/compose/runtime/MutableIntState;I)V

    return-void
.end method

.method public static final synthetic access$SoftKeyboardListener(Landroid/view/View;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "density"    # Landroidx/compose/ui/unit/Density;
    .param p2, "onKeyboardVisibilityChange"    # Lkotlin/jvm/functions/Function0;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->SoftKeyboardListener(Landroid/view/View;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$calculateMaxHeight(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)I
    .locals 1
    .param p0, "windowBounds"    # Landroidx/compose/ui/geometry/Rect;
    .param p1, "anchorBounds"    # Landroidx/compose/ui/geometry/Rect;
    .param p2, "verticalMargin"    # I

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->calculateMaxHeight(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$expandable(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/Modifier;
    .param p1, "expanded"    # Z
    .param p2, "onExpandedChange"    # Lkotlin/jvm/functions/Function0;
    .param p3, "expandedDescription"    # Ljava/lang/String;
    .param p4, "collapsedDescription"    # Ljava/lang/String;

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->expandable(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getAnchorBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 1
    invoke-static {p0}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->getAnchorBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getExposedDropdownMenuItemHorizontalPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->ExposedDropdownMenuItemHorizontalPadding:F

    return v0
.end method

.method public static final synthetic access$getWindowBounds(Landroid/view/View;)Landroidx/compose/ui/geometry/Rect;
    .locals 1
    .param p0, "$receiver"    # Landroid/view/View;

    .line 1
    invoke-static {p0}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->getWindowBounds(Landroid/view/View;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static final calculateMaxHeight(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)I
    .locals 6
    .param p0, "windowBounds"    # Landroidx/compose/ui/geometry/Rect;
    .param p1, "anchorBounds"    # Landroidx/compose/ui/geometry/Rect;
    .param p2, "verticalMargin"    # I

    .line 1064
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1066
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v1

    int-to-float v2, p2

    add-float/2addr v1, v2

    .line 1067
    .local v1, "marginedWindowTop":F
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v2

    int-to-float v3, p2

    sub-float/2addr v2, v3

    .line 1069
    .local v2, "marginedWindowBottom":F
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v3

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v3

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    goto :goto_0

    .line 1072
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v3

    sub-float/2addr v3, v1

    .line 1073
    .local v3, "heightAbove":F
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v4

    sub-float v4, v2, v4

    .line 1074
    .local v4, "heightBelow":F
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    goto :goto_1

    .line 1070
    .end local v3    # "heightAbove":F
    .end local v4    # "heightBelow":F
    :cond_2
    :goto_0
    sub-float v3, v2, v1

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    .line 1069
    :goto_1
    nop

    .line 1068
    move v3, v5

    .line 1077
    .local v3, "availableHeight":I
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static final expandable(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;
    .locals 5
    .param p0, "$this$expandable"    # Landroidx/compose/ui/Modifier;
    .param p1, "expanded"    # Z
    .param p2, "onExpandedChange"    # Lkotlin/jvm/functions/Function0;
    .param p3, "expandedDescription"    # Ljava/lang/String;
    .param p4, "collapsedDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1040
    new-instance v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p2, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 1050
    new-instance v2, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2;

    invoke-direct {v2, p1, p3, p4, p2}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2;-><init>(ZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v3, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 1057
    return-object v0
.end method

.method private static final getAnchorBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 4
    .param p0, "$this$getAnchorBounds"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 1087
    if-nez p0, :cond_0

    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v0

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static final getWindowBounds(Landroid/view/View;)Landroidx/compose/ui/geometry/Rect;
    .locals 2
    .param p0, "$this$getWindowBounds"    # Landroid/view/View;

    .line 1080
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "it":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 1081
    .local v1, "$i$a$-let-ExposedDropdownMenu_androidKt$getWindowBounds$1":I
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1082
    invoke-static {v0}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 1080
    .end local v0    # "it":Landroid/graphics/Rect;
    .end local v1    # "$i$a$-let-ExposedDropdownMenu_androidKt$getWindowBounds$1":I
    nop

    .line 1083
    return-object v0
.end method
