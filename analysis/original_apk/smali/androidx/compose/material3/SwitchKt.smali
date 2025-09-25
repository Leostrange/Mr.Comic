.class public final Landroidx/compose/material3/SwitchKt;
.super Ljava/lang/Object;
.source "Switch.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwitch.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Switch.kt\nandroidx/compose/material3/SwitchKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 7 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 8 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 9 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 10 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 11 Composer.kt\nandroidx/compose/runtime/Updater\n+ 12 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,573:1\n1116#2,6:574\n1116#2,6:585\n1116#2,6:591\n1116#2,3:602\n1119#2,3:608\n1116#2,6:612\n1116#2,6:618\n1116#2,6:707\n58#3:580\n75#3:581\n58#3:665\n58#3:666\n81#3:667\n88#3:668\n51#3:669\n58#3:671\n75#3:713\n58#3:759\n75#3:760\n58#3:761\n74#4:582\n74#4:584\n74#4:664\n74#4:670\n1#5:583\n487#6,4:597\n491#6,2:605\n495#6:611\n25#7:601\n456#7,8:641\n464#7,3:655\n467#7,3:659\n456#7,8:689\n464#7,3:703\n456#7,8:730\n464#7,3:744\n467#7,3:748\n467#7,3:753\n487#8:607\n68#9,6:624\n74#9:658\n78#9:663\n68#9,6:672\n74#9:706\n69#9,5:714\n74#9:747\n78#9:752\n78#9:757\n78#10,11:630\n91#10:662\n78#10,11:678\n78#10,11:719\n91#10:751\n91#10:756\n3737#11,6:649\n3737#11,6:697\n3737#11,6:738\n81#12:758\n*S KotlinDebug\n*F\n+ 1 Switch.kt\nandroidx/compose/material3/SwitchKt\n*L\n98#1:574,6\n109#1:585,6\n114#1:591,6\n115#1:602,3\n115#1:608,3\n117#1:612,6\n122#1:618,6\n229#1:707,6\n106#1:580\n106#1:581\n195#1:665\n196#1:666\n196#1:667\n195#1:668\n195#1:669\n202#1:671\n234#1:713\n256#1:759\n256#1:760\n257#1:761\n107#1:582\n108#1:584\n191#1:664\n200#1:670\n115#1:597,4\n115#1:605,2\n115#1:611\n115#1:601\n146#1:641,8\n146#1:655,3\n146#1:659,3\n223#1:689,8\n223#1:703,3\n226#1:730,8\n226#1:744,3\n226#1:748,3\n223#1:753,3\n115#1:607\n146#1:624,6\n146#1:658\n146#1:663\n223#1:672,6\n223#1:706\n226#1:714,5\n226#1:747\n226#1:752\n223#1:757\n146#1:630,11\n146#1:662\n223#1:678,11\n226#1:719,11\n226#1:751\n223#1:756\n146#1:649,6\n223#1:697,6\n226#1:738,6\n189#1:758\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001aj\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0015\u0008\u0002\u0010\u0016\u001a\u000f\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0017\u00a2\u0006\u0002\u0008\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001dH\u0007\u00a2\u0006\u0002\u0010\u001e\u001ay\u0010\u001f\u001a\u00020\u000f*\u00020 2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001b2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00020\"2\u0013\u0010\u0016\u001a\u000f\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0017\u00a2\u0006\u0002\u0008\u00182\u0006\u0010\u001c\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010\'\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0004H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010*\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u0010\u0010\u0006\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u0016\u0010\u0007\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0005\u001a\u0004\u0008\u0008\u0010\t\"\u0010\u0010\n\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u0010\u0010\u000b\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u0016\u0010\u000c\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0005\u001a\u0004\u0008\r\u0010\t\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006+\u00b2\u0006\n\u0010,\u001a\u00020\u0011X\u008a\u0084\u0002"
    }
    d2 = {
        "AnimationSpec",
        "Landroidx/compose/animation/core/TweenSpec;",
        "",
        "SwitchHeight",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "SwitchWidth",
        "ThumbDiameter",
        "getThumbDiameter",
        "()F",
        "ThumbPadding",
        "ThumbPathLength",
        "UncheckedThumbDiameter",
        "getUncheckedThumbDiameter",
        "Switch",
        "",
        "checked",
        "",
        "onCheckedChange",
        "Lkotlin/Function1;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "thumbContent",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "enabled",
        "colors",
        "Landroidx/compose/material3/SwitchColors;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V",
        "SwitchImpl",
        "Landroidx/compose/foundation/layout/BoxScope;",
        "thumbValue",
        "Landroidx/compose/runtime/State;",
        "Landroidx/compose/foundation/interaction/InteractionSource;",
        "thumbShape",
        "Landroidx/compose/ui/graphics/Shape;",
        "uncheckedThumbDiameter",
        "minBound",
        "maxBound",
        "SwitchImpl-0DmnUew",
        "(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/graphics/Shape;FFFLandroidx/compose/runtime/Composer;II)V",
        "material3_release",
        "isPressed"
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
.field private static final AnimationSpec:Landroidx/compose/animation/core/TweenSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TweenSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final SwitchHeight:F

.field private static final SwitchWidth:F

.field private static final ThumbDiameter:F

.field private static final ThumbPadding:F

.field private static final ThumbPathLength:F

.field private static final UncheckedThumbDiameter:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 252
    sget-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/SwitchTokens;->getSelectedHandleWidth-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/SwitchKt;->ThumbDiameter:F

    .line 253
    sget-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/SwitchTokens;->getUnselectedHandleWidth-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/SwitchKt;->UncheckedThumbDiameter:F

    .line 254
    sget-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/SwitchTokens;->getTrackWidth-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/SwitchKt;->SwitchWidth:F

    .line 255
    sget-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/SwitchTokens;->getTrackHeight-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/SwitchKt;->SwitchHeight:F

    .line 256
    sget v0, Landroidx/compose/material3/SwitchKt;->SwitchHeight:F

    .local v0, "arg0$iv":F
    sget v1, Landroidx/compose/material3/SwitchKt;->ThumbDiameter:F

    .local v1, "other$iv":F
    const/4 v2, 0x0

    .line 759
    .local v2, "$i$f$minus-5rwHm24":I
    sub-float v3, v0, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 256
    .end local v0    # "arg0$iv":F
    .end local v1    # "other$iv":F
    .end local v2    # "$i$f$minus-5rwHm24":I
    const/4 v1, 0x2

    .restart local v0    # "arg0$iv":F
    .local v1, "other$iv":I
    const/4 v2, 0x0

    .line 760
    .local v2, "$i$f$div-u2uoSUM":I
    int-to-float v3, v1

    div-float v3, v0, v3

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 256
    .end local v0    # "arg0$iv":F
    .end local v1    # "other$iv":I
    .end local v2    # "$i$f$div-u2uoSUM":I
    sput v0, Landroidx/compose/material3/SwitchKt;->ThumbPadding:F

    .line 257
    sget v0, Landroidx/compose/material3/SwitchKt;->SwitchWidth:F

    .restart local v0    # "arg0$iv":F
    sget v1, Landroidx/compose/material3/SwitchKt;->ThumbDiameter:F

    .local v1, "other$iv":F
    const/4 v2, 0x0

    .line 761
    .local v2, "$i$f$minus-5rwHm24":I
    sub-float v3, v0, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 257
    .end local v0    # "arg0$iv":F
    .end local v1    # "other$iv":F
    .end local v2    # "$i$f$minus-5rwHm24":I
    sget v1, Landroidx/compose/material3/SwitchKt;->ThumbPadding:F

    .restart local v0    # "arg0$iv":F
    .restart local v1    # "other$iv":F
    const/4 v2, 0x0

    .line 761
    .restart local v2    # "$i$f$minus-5rwHm24":I
    sub-float v3, v0, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 257
    .end local v0    # "arg0$iv":F
    .end local v1    # "other$iv":F
    .end local v2    # "$i$f$minus-5rwHm24":I
    sput v0, Landroidx/compose/material3/SwitchKt;->ThumbPathLength:F

    .line 259
    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/SwitchKt;->AnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    return-void
.end method

.method public static final Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 47
    .param p0, "checked"    # Z
    .param p1, "onCheckedChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "thumbContent"    # Lkotlin/jvm/functions/Function2;
    .param p4, "enabled"    # Z
    .param p5, "colors"    # Landroidx/compose/material3/SwitchColors;
    .param p6, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/material3/SwitchColors;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 99
    move-object/from16 v10, p1

    move/from16 v11, p8

    const v0, 0x5e33f474

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Switch)P(!1,5,4,6,2)96@4481L8,97@4541L39,*106@4829L7,107@4904L7,108@4964L111,113@5139L36,114@5192L24,116@5233L145,116@5222L156,121@5410L190,121@5384L216,145@6060L844:Switch.kt#uh7d8r"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p8

    .local v1, "$dirty":I
    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move/from16 v9, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v11, 0x6

    if-nez v2, :cond_2

    move/from16 v9, p0

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    goto :goto_1

    :cond_2
    move/from16 v9, p0

    :goto_1
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v11, 0x30

    if-nez v2, :cond_5

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    :goto_3
    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v3, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v11, 0x180

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v1, v4

    goto :goto_5

    :cond_8
    move-object/from16 v3, p2

    :goto_5
    and-int/lit8 v4, p9, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v5, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v5, v11, 0xc00

    if-nez v5, :cond_b

    move-object/from16 v5, p3

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x800

    goto :goto_6

    :cond_a
    const/16 v6, 0x400

    :goto_6
    or-int/2addr v1, v6

    goto :goto_7

    :cond_b
    move-object/from16 v5, p3

    :goto_7
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v8, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v8, v11, 0x6000

    if-nez v8, :cond_e

    move/from16 v8, p4

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x4000

    goto :goto_8

    :cond_d
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v1, v13

    goto :goto_9

    :cond_e
    move/from16 v8, p4

    :goto_9
    const/high16 v13, 0x30000

    and-int/2addr v13, v11

    if-nez v13, :cond_11

    and-int/lit8 v13, p9, 0x20

    if-nez v13, :cond_f

    move-object/from16 v13, p5

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_f
    move-object/from16 v13, p5

    :cond_10
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v1, v14

    goto :goto_b

    :cond_11
    move-object/from16 v13, p5

    :goto_b
    and-int/lit8 v14, p9, 0x40

    const/high16 v15, 0x180000

    if-eqz v14, :cond_12

    or-int/2addr v1, v15

    move-object/from16 v15, p6

    goto :goto_d

    :cond_12
    and-int/2addr v15, v11

    if-nez v15, :cond_14

    move-object/from16 v15, p6

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v16, 0x80000

    :goto_c
    or-int v1, v1, v16

    goto :goto_d

    :cond_14
    move-object/from16 v15, p6

    :goto_d
    const v16, 0x92493

    and-int v7, v1, v16

    const v0, 0x92492

    if-ne v7, v0, :cond_16

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_e

    .line 172
    :cond_15
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v14, v1

    move-object/from16 v27, v5

    move/from16 v28, v8

    move-object/from16 v29, v13

    move-object/from16 v30, v15

    move-object v13, v3

    goto/16 :goto_22

    .line 99
    :cond_16
    :goto_e
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v11, 0x1

    const-string v7, "CC(remember):Switch.kt#9igjgp"

    const/4 v3, 0x6

    if-eqz v0, :cond_19

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_f

    .line 98
    :cond_17
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_18

    const v0, -0x70001

    and-int/2addr v1, v0

    :cond_18
    move-object/from16 v27, v5

    move/from16 v28, v8

    move-object/from16 v29, v13

    move-object/from16 v30, v15

    move-object/from16 v8, p2

    move v15, v1

    goto/16 :goto_13

    .line 99
    :cond_19
    :goto_f
    if-eqz v2, :cond_1a

    .line 94
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_10

    .line 99
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_1a
    move-object/from16 v0, p2

    .line 94
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_10
    if-eqz v4, :cond_1b

    .line 95
    const/4 v2, 0x0

    .end local p3    # "thumbContent":Lkotlin/jvm/functions/Function2;
    .local v2, "thumbContent":Lkotlin/jvm/functions/Function2;
    goto :goto_11

    .line 94
    .end local v2    # "thumbContent":Lkotlin/jvm/functions/Function2;
    .restart local p3    # "thumbContent":Lkotlin/jvm/functions/Function2;
    :cond_1b
    move-object v2, v5

    .line 95
    .end local p3    # "thumbContent":Lkotlin/jvm/functions/Function2;
    .restart local v2    # "thumbContent":Lkotlin/jvm/functions/Function2;
    :goto_11
    if-eqz v6, :cond_1c

    .line 96
    const/4 v4, 0x1

    move v8, v4

    .end local p4    # "enabled":Z
    .local v8, "enabled":Z
    :cond_1c
    and-int/lit8 v4, p9, 0x20

    if-eqz v4, :cond_1d

    .line 97
    sget-object v4, Landroidx/compose/material3/SwitchDefaults;->INSTANCE:Landroidx/compose/material3/SwitchDefaults;

    invoke-virtual {v4, v12, v3}, Landroidx/compose/material3/SwitchDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SwitchColors;

    move-result-object v4

    const v5, -0x70001

    .end local p5    # "colors":Landroidx/compose/material3/SwitchColors;
    .local v4, "colors":Landroidx/compose/material3/SwitchColors;
    and-int/2addr v1, v5

    move-object v13, v4

    .end local v4    # "colors":Landroidx/compose/material3/SwitchColors;
    .local v13, "colors":Landroidx/compose/material3/SwitchColors;
    :cond_1d
    if-eqz v14, :cond_1f

    .line 98
    const v4, -0x48d0ea3a

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v4, 0x0

    .local v4, "invalid$iv":Z
    move-object v5, v12

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 574
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 575
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v14, v3, :cond_1e

    .line 576
    const/4 v3, 0x0

    .line 98
    .local v3, "$i$a$-cache-SwitchKt$Switch$1":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v3

    .line 576
    .end local v3    # "$i$a$-cache-SwitchKt$Switch$1":I
    nop

    .line 577
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 578
    nop

    .end local v3    # "value$iv":Ljava/lang/Object;
    goto :goto_12

    .line 579
    :cond_1e
    move-object v3, v14

    .line 575
    :goto_12
    nop

    .line 574
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 98
    .end local v4    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    check-cast v3, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .end local p6    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v3, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move v15, v1

    move-object/from16 v27, v2

    move-object/from16 v30, v3

    move/from16 v28, v8

    move-object/from16 v29, v13

    move-object v8, v0

    goto :goto_13

    .line 97
    .end local v3    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p6    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_1f
    move-object/from16 v27, v2

    move/from16 v28, v8

    move-object/from16 v29, v13

    move-object/from16 v30, v15

    move-object v8, v0

    move v15, v1

    .line 98
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v1    # "$dirty":I
    .end local v2    # "thumbContent":Lkotlin/jvm/functions/Function2;
    .end local v13    # "colors":Landroidx/compose/material3/SwitchColors;
    .end local p6    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v8, "modifier":Landroidx/compose/ui/Modifier;
    .local v15, "$dirty":I
    .local v27, "thumbContent":Lkotlin/jvm/functions/Function2;
    .local v28, "enabled":Z
    .local v29, "colors":Landroidx/compose/material3/SwitchColors;
    .local v30, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_13
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 99
    const/4 v0, -0x1

    const-string/jumbo v1, "androidx.compose.material3.Switch (Switch.kt:98)"

    const v2, 0x5e33f474

    invoke-static {v2, v15, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 100
    :cond_20
    if-nez v27, :cond_21

    .line 101
    sget v0, Landroidx/compose/material3/SwitchKt;->UncheckedThumbDiameter:F

    goto :goto_14

    .line 103
    :cond_21
    sget v0, Landroidx/compose/material3/SwitchKt;->ThumbDiameter:F

    .line 100
    :goto_14
    move/from16 v31, v0

    .line 106
    .local v31, "uncheckedThumbDiameter":F
    sget v0, Landroidx/compose/material3/SwitchKt;->SwitchHeight:F

    .local v0, "arg0$iv":F
    const/4 v1, 0x0

    .line 580
    .local v1, "$i$f$minus-5rwHm24":I
    sub-float v2, v0, v31

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 106
    .end local v0    # "arg0$iv":F
    .end local v1    # "$i$f$minus-5rwHm24":I
    const/4 v1, 0x2

    .restart local v0    # "arg0$iv":F
    .local v1, "other$iv":I
    const/4 v2, 0x0

    .line 581
    .local v2, "$i$f$div-u2uoSUM":I
    int-to-float v3, v1

    div-float v3, v0, v3

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 106
    .end local v0    # "arg0$iv":F
    .end local v1    # "other$iv":I
    .end local v2    # "$i$f$div-u2uoSUM":I
    move v14, v0

    .line 107
    .local v14, "thumbPaddingStart":F
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .line 582
    .local v2, "$i$f$getCurrent":I
    const v3, 0x789c5f52

    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v12, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 107
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    move-object v0, v5

    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 583
    .local v0, "$this$Switch_u24lambda_u241":Landroidx/compose/ui/unit/Density;
    const/4 v1, 0x0

    .line 107
    .local v1, "$i$a$-with-SwitchKt$Switch$minBound$1":I
    invoke-interface {v0, v14}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v13

    .line 108
    .end local v0    # "$this$Switch_u24lambda_u241":Landroidx/compose/ui/unit/Density;
    .end local v1    # "$i$a$-with-SwitchKt$Switch$minBound$1":I
    .local v13, "minBound":F
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .line 584
    .restart local v2    # "$i$f$getCurrent":I
    invoke-static {v12, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 108
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 583
    .local v0, "$this$Switch_u24lambda_u242":Landroidx/compose/ui/unit/Density;
    const/4 v1, 0x0

    .line 108
    .local v1, "$i$a$-with-SwitchKt$Switch$maxBound$1":I
    sget v2, Landroidx/compose/material3/SwitchKt;->ThumbPathLength:F

    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v6

    .end local v0    # "$this$Switch_u24lambda_u242":Landroidx/compose/ui/unit/Density;
    .end local v1    # "$i$a$-with-SwitchKt$Switch$maxBound$1":I
    .local v6, "maxBound":F
    const v0, -0x48d0e893

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 109
    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v0

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v1

    or-int/2addr v0, v1

    .local v0, "invalid$iv":Z
    move-object v1, v12

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 585
    .local v2, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 586
    .local v4, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_23

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_22

    goto :goto_15

    .line 590
    :cond_22
    move/from16 p2, v0

    move-object v0, v3

    goto :goto_16

    .line 587
    :cond_23
    :goto_15
    const/4 v5, 0x0

    .line 110
    .local v5, "$i$a$-cache-SwitchKt$Switch$valueToOffset$1":I
    move/from16 p2, v0

    .end local v0    # "invalid$iv":Z
    .local p2, "invalid$iv":Z
    new-instance v0, Landroidx/compose/material3/SwitchKt$Switch$valueToOffset$1$1;

    invoke-direct {v0, v6, v13}, Landroidx/compose/material3/SwitchKt$Switch$valueToOffset$1$1;-><init>(FF)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 587
    .end local v5    # "$i$a$-cache-SwitchKt$Switch$valueToOffset$1":I
    nop

    .line 588
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 589
    nop

    .line 586
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_16
    nop

    .line 585
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 109
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v2    # "$i$f$cache":I
    .end local p2    # "invalid$iv":Z
    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .local v5, "valueToOffset":Lkotlin/jvm/functions/Function1;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 113
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v5, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v4

    .local v4, "targetValue":F
    const v0, -0x48d0e7e4

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 114
    move-object v0, v12

    .local v0, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    move v1, v3

    .local v1, "invalid$iv":Z
    const/4 v2, 0x0

    .line 591
    .restart local v2    # "$i$f$cache":I
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 592
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p3, v1

    .end local v1    # "invalid$iv":Z
    .local p3, "invalid$iv":Z
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    const/4 v9, 0x0

    if-ne v3, v1, :cond_24

    .line 593
    const/4 v1, 0x0

    .line 114
    .local v1, "$i$a$-cache-SwitchKt$Switch$offset$1":I
    move/from16 p4, v1

    .end local v1    # "$i$a$-cache-SwitchKt$Switch$offset$1":I
    .local p4, "$i$a$-cache-SwitchKt$Switch$offset$1":I
    const/4 v1, 0x0

    move/from16 p5, v2

    const/4 v2, 0x2

    .end local v2    # "$i$f$cache":I
    .local p5, "$i$f$cache":I
    invoke-static {v4, v1, v2, v9}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v1

    .line 593
    .end local p4    # "$i$a$-cache-SwitchKt$Switch$offset$1":I
    nop

    .line 594
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 595
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_17

    .line 596
    .end local p5    # "$i$f$cache":I
    .restart local v2    # "$i$f$cache":I
    :cond_24
    move/from16 p5, v2

    .end local v2    # "$i$f$cache":I
    .restart local p5    # "$i$f$cache":I
    move-object v1, v3

    .line 592
    :goto_17
    nop

    .line 591
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 114
    .end local v0    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local p3    # "invalid$iv":Z
    .end local p5    # "$i$f$cache":I
    move-object v3, v1

    check-cast v3, Landroidx/compose/animation/core/Animatable;

    .local v3, "offset":Landroidx/compose/animation/core/Animatable;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 115
    const/4 v0, 0x0

    move v1, v0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$rememberCoroutineScope":I
    const v9, 0x2e20b340

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp"

    invoke-static {v12, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 597
    nop

    .line 599
    move-object v9, v12

    .line 600
    .local v9, "composer$iv":Landroidx/compose/runtime/Composer;
    move/from16 v16, v0

    .local v16, "$changed$iv$iv":I
    const/4 v0, 0x0

    move/from16 p4, v0

    .local p4, "$i$f$remember":I
    const v0, -0x1d58f75c

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 601
    const/4 v0, 0x0

    .local v0, "invalid$iv$iv$iv":Z
    move-object/from16 p5, v12

    .local p5, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 602
    .local v17, "$i$f$cache":I
    move/from16 p6, v0

    .end local v0    # "invalid$iv$iv$iv":Z
    .local p6, "invalid$iv$iv$iv":Z
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 603
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v21, v1

    .end local v1    # "$changed$iv":I
    .local v21, "$changed$iv":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_25

    .line 604
    const/4 v1, 0x0

    .line 605
    .local v1, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 606
    const/16 v20, 0x0

    .line 607
    .local v20, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v20, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 606
    .end local v20    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    move-object/from16 v22, v0

    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .local v22, "it$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v20

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v9}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 605
    move/from16 v20, v1

    .end local v1    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    .local v20, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    new-instance v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 604
    .end local v20    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    move-object v0, v1

    .line 608
    .local v0, "value$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v1, p5

    .end local p5    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v1, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 609
    nop

    .end local v0    # "value$iv$iv$iv":Ljava/lang/Object;
    goto :goto_18

    .line 610
    .end local v1    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "it$iv$iv$iv":Ljava/lang/Object;
    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    .restart local p5    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_25
    move-object/from16 v1, p5

    move-object/from16 v22, v0

    .line 603
    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local p5    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v22    # "it$iv$iv$iv":Ljava/lang/Object;
    :goto_18
    nop

    .line 602
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    .end local v22    # "it$iv$iv$iv":Ljava/lang/Object;
    nop

    .line 601
    .end local v1    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache":I
    .end local p6    # "invalid$iv$iv$iv":Z
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 600
    .end local v16    # "$changed$iv$iv":I
    .end local p4    # "$i$f$remember":I
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 611
    .local v0, "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 115
    .end local v0    # "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    .end local v2    # "$i$f$rememberCoroutineScope":I
    .end local v9    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$changed$iv":I
    move-object v9, v1

    .local v9, "scope":Lkotlinx/coroutines/CoroutineScope;
    const v0, -0x48d0e786

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v1

    or-int/2addr v0, v1

    .line 117
    nop

    .local v0, "invalid$iv":Z
    move-object v1, v12

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 612
    .local v2, "$i$f$cache":I
    move/from16 p4, v2

    .end local v2    # "$i$f$cache":I
    .local p4, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 613
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_27

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p5, v0

    .end local v0    # "invalid$iv":Z
    .local p5, "invalid$iv":Z
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_26

    goto :goto_19

    .line 617
    :cond_26
    move-object v0, v2

    goto :goto_1a

    .line 613
    .end local p5    # "invalid$iv":Z
    .restart local v0    # "invalid$iv":Z
    :cond_27
    move/from16 p5, v0

    .line 614
    .end local v0    # "invalid$iv":Z
    .restart local p5    # "invalid$iv":Z
    :goto_19
    const/4 v0, 0x0

    .line 117
    .local v0, "$i$a$-cache-SwitchKt$Switch$2":I
    move/from16 p6, v0

    .end local v0    # "$i$a$-cache-SwitchKt$Switch$2":I
    .local p6, "$i$a$-cache-SwitchKt$Switch$2":I
    new-instance v0, Landroidx/compose/material3/SwitchKt$Switch$2$1;

    invoke-direct {v0, v3, v13}, Landroidx/compose/material3/SwitchKt$Switch$2$1;-><init>(Landroidx/compose/animation/core/Animatable;F)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 614
    .end local p6    # "$i$a$-cache-SwitchKt$Switch$2":I
    nop

    .line 615
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 616
    nop

    .line 613
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_1a
    nop

    .line 612
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 117
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local p4    # "$i$f$cache":I
    .end local p5    # "invalid$iv":Z
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v2, 0x0

    invoke-static {v0, v12, v2}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 122
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v1, -0x48d0e6d5

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v7

    or-int/2addr v1, v7

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v1, v7

    .local v1, "invalid$iv":Z
    move-object v7, v12

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 618
    .local v16, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 619
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_29

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p4, v1

    .end local v1    # "invalid$iv":Z
    .local p4, "invalid$iv":Z
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_28

    goto :goto_1b

    .line 623
    :cond_28
    move-object v1, v2

    goto :goto_1c

    .line 619
    .end local p4    # "invalid$iv":Z
    .restart local v1    # "invalid$iv":Z
    :cond_29
    move/from16 p4, v1

    .line 620
    .end local v1    # "invalid$iv":Z
    .restart local p4    # "invalid$iv":Z
    :goto_1b
    const/4 v1, 0x0

    .line 122
    .local v1, "$i$a$-cache-SwitchKt$Switch$3":I
    move/from16 p5, v1

    .end local v1    # "$i$a$-cache-SwitchKt$Switch$3":I
    .local p5, "$i$a$-cache-SwitchKt$Switch$3":I
    new-instance v1, Landroidx/compose/material3/SwitchKt$Switch$3$1;

    invoke-direct {v1, v3, v4, v9}, Landroidx/compose/material3/SwitchKt$Switch$3$1;-><init>(Landroidx/compose/animation/core/Animatable;FLkotlinx/coroutines/CoroutineScope;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 620
    .end local p5    # "$i$a$-cache-SwitchKt$Switch$3":I
    nop

    .line 621
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 622
    nop

    .line 619
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_1c
    nop

    .line 618
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 122
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    .end local p4    # "invalid$iv":Z
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    and-int/lit8 v2, v15, 0xe

    invoke-static {v0, v1, v12, v2}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 133
    if-eqz v10, :cond_2a

    .line 134
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 138
    sget-object v1, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/Role$Companion;->getSwitch-o7Vup1c()I

    move-result v1

    .line 134
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 135
    nop

    .line 139
    nop

    .line 140
    const/4 v7, 0x0

    .line 137
    nop

    .line 138
    invoke-static {v1}, Landroidx/compose/ui/semantics/Role;->box-impl(I)Landroidx/compose/ui/semantics/Role;

    move-result-object v16

    .line 136
    nop

    .line 134
    move/from16 v1, p0

    const/16 v17, 0x0

    move-object/from16 v2, v30

    move-object/from16 v32, v3

    move-object/from16 p2, v9

    move/from16 v9, v17

    .end local v3    # "offset":Landroidx/compose/animation/core/Animatable;
    .end local v9    # "scope":Lkotlinx/coroutines/CoroutineScope;
    .local v32, "offset":Landroidx/compose/animation/core/Animatable;
    .local p2, "scope":Lkotlinx/coroutines/CoroutineScope;
    move-object v3, v7

    move v7, v4

    .end local v4    # "targetValue":F
    .local v7, "targetValue":F
    move/from16 v4, v28

    move-object/from16 v34, v5

    .end local v5    # "valueToOffset":Lkotlin/jvm/functions/Function1;
    .local v34, "valueToOffset":Lkotlin/jvm/functions/Function1;
    move-object/from16 v5, v16

    move/from16 v35, v6

    .end local v6    # "maxBound":F
    .local v35, "maxBound":F
    move-object/from16 v6, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/selection/ToggleableKt;->toggleable-O2vRcR0(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_1d

    .line 143
    .end local v7    # "targetValue":F
    .end local v32    # "offset":Landroidx/compose/animation/core/Animatable;
    .end local v34    # "valueToOffset":Lkotlin/jvm/functions/Function1;
    .end local v35    # "maxBound":F
    .end local p2    # "scope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v3    # "offset":Landroidx/compose/animation/core/Animatable;
    .restart local v4    # "targetValue":F
    .restart local v5    # "valueToOffset":Lkotlin/jvm/functions/Function1;
    .restart local v6    # "maxBound":F
    .restart local v9    # "scope":Lkotlinx/coroutines/CoroutineScope;
    :cond_2a
    move-object/from16 v32, v3

    move v7, v4

    move-object/from16 v34, v5

    move/from16 v35, v6

    move-object/from16 p2, v9

    const/4 v9, 0x0

    .end local v3    # "offset":Landroidx/compose/animation/core/Animatable;
    .end local v4    # "targetValue":F
    .end local v5    # "valueToOffset":Lkotlin/jvm/functions/Function1;
    .end local v6    # "maxBound":F
    .end local v9    # "scope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v7    # "targetValue":F
    .restart local v32    # "offset":Landroidx/compose/animation/core/Animatable;
    .restart local v34    # "valueToOffset":Lkotlin/jvm/functions/Function1;
    .restart local v35    # "maxBound":F
    .restart local p2    # "scope":Lkotlinx/coroutines/CoroutineScope;
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 133
    :goto_1d
    nop

    .line 132
    nop

    .line 147
    .local v0, "toggleableModifier":Landroidx/compose/ui/Modifier;
    nop

    .line 149
    if-eqz v10, :cond_2b

    .line 150
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    invoke-static {v1}, Landroidx/compose/material3/InteractiveComponentSizeKt;->minimumInteractiveComponentSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_1e

    .line 152
    :cond_2b
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 148
    :goto_1e
    invoke-interface {v8, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 155
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 156
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v9, v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 157
    sget v2, Landroidx/compose/material3/SwitchKt;->SwitchWidth:F

    sget v3, Landroidx/compose/material3/SwitchKt;->SwitchHeight:F

    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 146
    move v2, v9

    .local v1, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .local v3, "$i$f$Box":I
    const v4, 0x2bb5b5d7

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v12, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 624
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v4

    .line 625
    .local v4, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v5, 0x0

    .line 628
    .local v5, "propagateMinConstraints$iv":Z
    shr-int/lit8 v6, v2, 0x3

    and-int/lit8 v6, v6, 0xe

    shr-int/lit8 v16, v2, 0x3

    and-int/lit8 v16, v16, 0x70

    or-int v6, v6, v16

    invoke-static {v4, v5, v12, v6}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    .local v6, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v16, v2, 0x3

    and-int/lit8 v16, v16, 0x70

    .line 629
    move/from16 v36, v16

    .local v36, "$changed$iv$iv":I
    const/16 v37, 0x0

    .local v37, "$i$f$Layout":I
    const v9, -0x4ee9b9da

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v12, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 630
    const/4 v9, 0x0

    invoke-static {v12, v9}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v9

    .line 631
    .local v9, "compositeKeyHash$iv$iv":I
    move-object/from16 p3, v0

    .end local v0    # "toggleableModifier":Landroidx/compose/ui/Modifier;
    .local p3, "toggleableModifier":Landroidx/compose/ui/Modifier;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v0

    .line 633
    .local v0, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    .line 640
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v17

    move-object/from16 p4, v1

    .end local v1    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local p4, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v1, v36, 0x9

    and-int/lit16 v1, v1, 0x1c00

    move/from16 p5, v3

    const/4 v3, 0x6

    .end local v3    # "$i$f$Box":I
    .local p5, "$i$f$Box":I
    or-int/2addr v1, v3

    .line 632
    move-object/from16 p6, v16

    .local p6, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 p7, v17

    .local v1, "$changed$iv$iv$iv":I
    .local p7, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v33, 0x0

    .line 641
    .local v33, "$i$f$ReusableComposeNode":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_2c

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 642
    :cond_2c
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 643
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 644
    move-object/from16 v3, p6

    .end local p6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v3, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1f

    .line 646
    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local p6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_2d
    move-object/from16 v3, p6

    .end local p6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 648
    :goto_1f
    move-object/from16 p6, v3

    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local p6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 635
    .local v16, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v38, v4

    .end local v4    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v38, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 636
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v0, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 638
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .local v4, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v17, 0x0

    .line 649
    .local v17, "$i$f$set-impl":I
    move-object/from16 v18, v3

    .local v18, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 650
    .local v20, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v21

    if-nez v21, :cond_2f

    move-object/from16 v39, v0

    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v39, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    move/from16 v40, v5

    .end local v5    # "propagateMinConstraints$iv":Z
    .local v40, "propagateMinConstraints$iv":Z
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_20

    :cond_2e
    move-object/from16 v5, v18

    goto :goto_21

    .end local v39    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v40    # "propagateMinConstraints$iv":Z
    .restart local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v5    # "propagateMinConstraints$iv":Z
    :cond_2f
    move-object/from16 v39, v0

    move/from16 v40, v5

    .line 651
    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v5    # "propagateMinConstraints$iv":Z
    .restart local v39    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v40    # "propagateMinConstraints$iv":Z
    :goto_20
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v5, v18

    .end local v18    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 652
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 654
    :goto_21
    nop

    .line 649
    .end local v5    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 654
    nop

    .line 639
    .end local v4    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v17    # "$i$f$set-impl":I
    nop

    .line 648
    .end local v3    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 655
    invoke-static {v12}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, p7

    .end local p7    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v4, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v4, v0, v12, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    const v0, 0x7ab4aae9

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 657
    shr-int/lit8 v0, v1, 0x9

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object v3, v12

    .local v3, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 658
    .local v5, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move/from16 p7, v0

    .end local v0    # "$changed$iv":I
    .local p7, "$changed$iv":I
    const v0, -0x4ab8dd4f

    move/from16 v41, v1

    .end local v1    # "$changed$iv$iv$iv":I
    .local v41, "$changed$iv$iv$iv":I
    const-string v1, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v1, v2, 0x6

    and-int/lit8 v1, v1, 0x70

    const/16 v16, 0x6

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .local v0, "$this$Switch_u24lambda_u247":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v42, v3

    move/from16 v43, v13

    .end local v13    # "minBound":F
    .local v42, "$composer":Landroidx/compose/runtime/Composer;
    .local v43, "minBound":F
    move-object v13, v0

    .end local v0    # "$this$Switch_u24lambda_u247":Landroidx/compose/foundation/layout/BoxScope;
    .local v13, "$this$Switch_u24lambda_u247":Landroidx/compose/foundation/layout/BoxScope;
    const/4 v0, 0x0

    .line 159
    .local v0, "$i$a$-Box-SwitchKt$Switch$4":I
    move/from16 v44, v0

    .end local v0    # "$i$a$-Box-SwitchKt$Switch$4":I
    .local v44, "$i$a$-Box-SwitchKt$Switch$4":I
    const v0, -0x6fa4a623

    move/from16 v45, v2

    .end local v2    # "$changed$iv":I
    .local v45, "$changed$iv":I
    const-string v2, "C164@6698L5,158@6451L447:Switch.kt#uh7d8r"

    move-object/from16 v46, v4

    move-object/from16 v4, v42

    .end local v42    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    .local v46, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-static {v4, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 163
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/animation/core/Animatable;->asState()Landroidx/compose/runtime/State;

    move-result-object v17

    .line 165
    sget-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/SwitchTokens;->getHandleShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v0, v4, v2}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v20

    .line 168
    sget v23, Landroidx/compose/material3/SwitchKt;->ThumbPathLength:F

    .line 159
    nop

    .line 160
    nop

    .line 161
    nop

    .line 162
    nop

    .line 163
    nop

    .line 169
    nop

    .line 164
    move-object/from16 v19, v30

    check-cast v19, Landroidx/compose/foundation/interaction/InteractionSource;

    .line 165
    nop

    .line 166
    nop

    .line 167
    nop

    .line 168
    and-int/lit8 v0, v1, 0xe

    shl-int/lit8 v2, v15, 0x3

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v0, v2

    shr-int/lit8 v2, v15, 0x6

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v0, v2

    shr-int/lit8 v2, v15, 0x6

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v0, v2

    shl-int/lit8 v2, v15, 0x6

    const/high16 v16, 0x70000

    and-int v2, v2, v16

    or-int/2addr v0, v2

    const/high16 v2, 0x380000

    and-int/2addr v2, v15

    or-int v25, v0, v2

    const/16 v26, 0x6

    .line 159
    move v0, v14

    .end local v14    # "thumbPaddingStart":F
    .local v0, "thumbPaddingStart":F
    move/from16 v14, p0

    move v2, v15

    .end local v15    # "$dirty":I
    .local v2, "$dirty":I
    move/from16 v15, v28

    move-object/from16 v16, v29

    move-object/from16 v18, v27

    move/from16 v21, v31

    move/from16 v22, v0

    move-object/from16 v24, v4

    invoke-static/range {v13 .. v26}, Landroidx/compose/material3/SwitchKt;->SwitchImpl-0DmnUew(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/graphics/Shape;FFFLandroidx/compose/runtime/Composer;II)V

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 171
    nop

    .line 658
    .end local v1    # "$changed":I
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v13    # "$this$Switch_u24lambda_u247":Landroidx/compose/foundation/layout/BoxScope;
    .end local v44    # "$i$a$-Box-SwitchKt$Switch$4":I
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 657
    .end local v3    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local p7    # "$changed$iv":I
    nop

    .line 659
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 660
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 661
    nop

    .end local v33    # "$i$f$ReusableComposeNode":I
    .end local v41    # "$changed$iv$iv$iv":I
    .end local v46    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local p6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 662
    nop

    .end local v9    # "compositeKeyHash$iv$iv":I
    .end local v36    # "$changed$iv$iv":I
    .end local v37    # "$i$f$Layout":I
    .end local v39    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 663
    nop

    .end local v6    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v38    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v40    # "propagateMinConstraints$iv":Z
    .end local v45    # "$changed$iv":I
    .end local p4    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local p5    # "$i$f$Box":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 172
    .end local v0    # "thumbPaddingStart":F
    .end local v7    # "targetValue":F
    .end local v31    # "uncheckedThumbDiameter":F
    .end local v32    # "offset":Landroidx/compose/animation/core/Animatable;
    .end local v34    # "valueToOffset":Lkotlin/jvm/functions/Function1;
    .end local v35    # "maxBound":F
    .end local v43    # "minBound":F
    .end local p2    # "scope":Lkotlinx/coroutines/CoroutineScope;
    .end local p3    # "toggleableModifier":Landroidx/compose/ui/Modifier;
    :cond_30
    move v14, v2

    move-object v13, v8

    .end local v2    # "$dirty":I
    .end local v8    # "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "$dirty":I
    :goto_22
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_31

    new-instance v16, Landroidx/compose/material3/SwitchKt$Switch$5;

    move-object/from16 v0, v16

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-object/from16 v4, v27

    move/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/SwitchKt$Switch$5;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_31
    return-void
.end method

.method private static final SwitchImpl-0DmnUew(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/graphics/Shape;FFFLandroidx/compose/runtime/Composer;II)V
    .locals 64
    .param p0, "$this$SwitchImpl_u2d0DmnUew"    # Landroidx/compose/foundation/layout/BoxScope;
    .param p1, "checked"    # Z
    .param p2, "enabled"    # Z
    .param p3, "colors"    # Landroidx/compose/material3/SwitchColors;
    .param p4, "thumbValue"    # Landroidx/compose/runtime/State;
    .param p5, "thumbContent"    # Lkotlin/jvm/functions/Function2;
    .param p6, "interactionSource"    # Landroidx/compose/foundation/interaction/InteractionSource;
    .param p7, "thumbShape"    # Landroidx/compose/ui/graphics/Shape;
    .param p8, "uncheckedThumbDiameter"    # F
    .param p9, "minBound"    # F
    .param p10, "maxBound"    # F
    .param p11, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p12, "$changed"    # I
    .param p13, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "ZZ",
            "Landroidx/compose/material3/SwitchColors;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/ui/graphics/Shape;",
            "FFF",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 187
    move-object/from16 v14, p0

    move/from16 v15, p1

    move/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v11, p5

    move-object/from16 v10, p6

    move-object/from16 v9, p7

    move/from16 v8, p8

    move/from16 v7, p9

    move/from16 v6, p10

    move/from16 v5, p12

    const v0, -0x754ef975

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .end local p11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(SwitchImpl)P(!1,2!1,8,6!1,7,9:c#ui.unit.Dp,5:c#ui.unit.Dp,4:c#ui.unit.Dp)188@7413L25,*190@7481L7,210@8114L5,222@8432L1050:Switch.kt#uh7d8r"

    invoke-static {v4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p12

    .local v1, "$dirty":I
    move/from16 v2, p13

    .local v2, "$dirty1":I
    and-int/lit8 v3, v5, 0x6

    const/16 v16, 0x4

    if-nez v3, :cond_1

    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move/from16 v3, v16

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v1, v3

    :cond_1
    and-int/lit8 v3, v5, 0x30

    if-nez v3, :cond_3

    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_1

    :cond_2
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v1, v3

    :cond_3
    and-int/lit16 v3, v5, 0x180

    if-nez v3, :cond_5

    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x100

    goto :goto_2

    :cond_4
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v1, v3

    :cond_5
    and-int/lit16 v3, v5, 0xc00

    if-nez v3, :cond_7

    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x800

    goto :goto_3

    :cond_6
    const/16 v3, 0x400

    :goto_3
    or-int/2addr v1, v3

    :cond_7
    and-int/lit16 v3, v5, 0x6000

    if-nez v3, :cond_9

    move-object/from16 v3, p4

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x4000

    goto :goto_4

    :cond_8
    const/16 v18, 0x2000

    :goto_4
    or-int v1, v1, v18

    goto :goto_5

    :cond_9
    move-object/from16 v3, p4

    :goto_5
    const/high16 v18, 0x30000

    and-int v18, v5, v18

    if-nez v18, :cond_b

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/high16 v18, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v18, 0x10000

    :goto_6
    or-int v1, v1, v18

    :cond_b
    const/high16 v18, 0x180000

    and-int v18, v5, v18

    if-nez v18, :cond_d

    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const/high16 v18, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v18, 0x80000

    :goto_7
    or-int v1, v1, v18

    :cond_d
    const/high16 v18, 0xc00000

    and-int v18, v5, v18

    if-nez v18, :cond_f

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    const/high16 v18, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v18, 0x400000

    :goto_8
    or-int v1, v1, v18

    :cond_f
    const/high16 v18, 0x6000000

    and-int v18, v5, v18

    if-nez v18, :cond_11

    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x4000000

    goto :goto_9

    :cond_10
    const/high16 v18, 0x2000000

    :goto_9
    or-int v1, v1, v18

    :cond_11
    const/high16 v18, 0x30000000

    and-int v18, v5, v18

    if-nez v18, :cond_13

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_12

    const/high16 v18, 0x20000000

    goto :goto_a

    :cond_12
    const/high16 v18, 0x10000000

    :goto_a
    or-int v1, v1, v18

    :cond_13
    and-int/lit8 v18, p13, 0x6

    if-nez v18, :cond_15

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_14

    goto :goto_b

    :cond_14
    const/16 v16, 0x2

    :goto_b
    or-int v2, v2, v16

    :cond_15
    const v16, 0x12492493

    and-int v0, v1, v16

    const v3, 0x12492492

    if-ne v0, v3, :cond_17

    and-int/lit8 v0, v2, 0x3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_17

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_c

    .line 250
    :cond_16
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v18, v1

    move/from16 p11, v2

    move-object/from16 v55, v4

    move-object v1, v11

    goto/16 :goto_19

    .line 187
    :cond_17
    :goto_c
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo v0, "androidx.compose.material3.SwitchImpl (Switch.kt:186)"

    const v3, -0x754ef975

    invoke-static {v3, v1, v2, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 188
    :cond_18
    move/from16 p11, v2

    .end local v2    # "$dirty1":I
    .local p11, "$dirty1":I
    invoke-virtual {v12, v13, v15}, Landroidx/compose/material3/SwitchColors;->trackColor-WaAFU9c$material3_release(ZZ)J

    move-result-wide v2

    .line 189
    .local v2, "trackColor":J
    shr-int/lit8 v0, v1, 0x12

    and-int/lit8 v0, v0, 0xe

    invoke-static {v10, v4, v0}, Landroidx/compose/foundation/interaction/PressInteractionKt;->collectIsPressedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 191
    .local v0, "isPressed$delegate":Landroidx/compose/runtime/State;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .local v5, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/16 v16, 0x0

    .local v16, "$changed$iv":I
    const/16 v17, 0x0

    .line 664
    .local v17, "$i$f$getCurrent":I
    move/from16 v18, v1

    .end local v1    # "$dirty":I
    .local v18, "$dirty":I
    const v1, 0x789c5f52

    const-string v11, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v4, v1, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v19

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 191
    .end local v5    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v16    # "$changed$iv":I
    .end local v17    # "$i$f$getCurrent":I
    move-object/from16 v5, v19

    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 583
    .local v5, "$this$SwitchImpl_0DmnUew_u24lambda_u249":Landroidx/compose/ui/unit/Density;
    const/16 v16, 0x0

    .line 191
    .local v16, "$i$a$-with-SwitchKt$SwitchImpl$thumbValueDp$1":I
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Number;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-interface {v5, v1}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result v1

    .line 192
    .end local v5    # "$this$SwitchImpl_0DmnUew_u24lambda_u249":Landroidx/compose/ui/unit/Density;
    .end local v16    # "$i$a$-with-SwitchKt$SwitchImpl$thumbValueDp$1":I
    .local v1, "thumbValueDp":F
    invoke-static {v0}, Landroidx/compose/material3/SwitchKt;->SwitchImpl_0DmnUew$lambda$8(Landroidx/compose/runtime/State;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 193
    sget-object v5, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual {v5}, Landroidx/compose/material3/tokens/SwitchTokens;->getPressedHandleWidth-D9Ej5fM()F

    move-result v5

    goto :goto_d

    .line 195
    :cond_19
    sget v5, Landroidx/compose/material3/SwitchKt;->ThumbDiameter:F

    .local v5, "arg0$iv":F
    const/16 v16, 0x0

    .line 665
    .local v16, "$i$f$minus-5rwHm24":I
    sub-float v17, v5, v8

    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 196
    .end local v5    # "arg0$iv":F
    .end local v16    # "$i$f$minus-5rwHm24":I
    const/16 v16, 0x0

    .line 666
    .restart local v16    # "$i$f$minus-5rwHm24":I
    sub-float v17, v1, v7

    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v16

    .line 196
    .end local v16    # "$i$f$minus-5rwHm24":I
    const/16 v17, 0x0

    .line 666
    .local v17, "$i$f$minus-5rwHm24":I
    sub-float v20, v6, v7

    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v17

    .line 196
    .end local v17    # "$i$f$minus-5rwHm24":I
    nop

    .local v16, "arg0$iv":F
    .local v17, "other$iv":F
    const/16 v20, 0x0

    .line 667
    .local v20, "$i$f$div-0680j_4":I
    div-float v16, v16, v17

    .line 195
    .end local v16    # "arg0$iv":F
    .end local v17    # "other$iv":F
    .end local v20    # "$i$f$div-0680j_4":I
    nop

    .restart local v5    # "arg0$iv":F
    .local v16, "other$iv":F
    const/16 v17, 0x0

    .line 668
    .local v17, "$i$f$times-u2uoSUM":I
    mul-float v20, v5, v16

    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 195
    .end local v5    # "arg0$iv":F
    .end local v16    # "other$iv":F
    .end local v17    # "$i$f$times-u2uoSUM":I
    nop

    .local v5, "other$iv":F
    const/16 v16, 0x0

    .line 669
    .local v16, "$i$f$plus-5rwHm24":I
    add-float v17, v8, v5

    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v17

    move/from16 v5, v17

    .line 192
    .end local v5    # "other$iv":F
    .end local v16    # "$i$f$plus-5rwHm24":I
    :goto_d
    move/from16 v16, v1

    .end local v1    # "thumbValueDp":F
    .local v5, "thumbSizeDp":F
    .local v16, "thumbValueDp":F
    const v1, -0x3b3c1854

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "*199@7822L7"

    invoke-static {v4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 199
    invoke-static {v0}, Landroidx/compose/material3/SwitchKt;->SwitchImpl_0DmnUew$lambda$8(Landroidx/compose/runtime/State;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 200
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    .local v1, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/16 v17, 0x0

    .local v17, "$changed$iv":I
    const/16 v20, 0x0

    .line 670
    .local v20, "$i$f$getCurrent":I
    move-object/from16 v21, v0

    const v0, 0x789c5f52

    .end local v0    # "isPressed$delegate":Landroidx/compose/runtime/State;
    .local v21, "isPressed$delegate":Landroidx/compose/runtime/State;
    invoke-static {v4, v0, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 200
    .end local v1    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v17    # "$changed$iv":I
    .end local v20    # "$i$f$getCurrent":I
    check-cast v0, Landroidx/compose/ui/unit/Density;

    .local v0, "$this$SwitchImpl_0DmnUew_u24lambda_u2410":Landroidx/compose/ui/unit/Density;
    const/4 v1, 0x0

    .line 205
    .local v1, "$i$a$-with-SwitchKt$SwitchImpl$thumbOffset$1":I
    nop

    .line 201
    if-eqz v15, :cond_1a

    .line 202
    sget v11, Landroidx/compose/material3/SwitchKt;->ThumbPathLength:F

    .local v11, "arg0$iv":F
    sget-object v17, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/material3/tokens/SwitchTokens;->getTrackOutlineWidth-D9Ej5fM()F

    move-result v17

    .local v17, "other$iv":F
    const/16 v19, 0x0

    .line 671
    .local v19, "$i$f$minus-5rwHm24":I
    sub-float v20, v11, v17

    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v11

    .end local v11    # "arg0$iv":F
    .end local v17    # "other$iv":F
    .end local v19    # "$i$f$minus-5rwHm24":I
    goto :goto_e

    .line 204
    :cond_1a
    sget-object v11, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual {v11}, Landroidx/compose/material3/tokens/SwitchTokens;->getTrackOutlineWidth-D9Ej5fM()F

    move-result v11

    .line 205
    :goto_e
    invoke-interface {v0, v11}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    .line 200
    .end local v0    # "$this$SwitchImpl_0DmnUew_u24lambda_u2410":Landroidx/compose/ui/unit/Density;
    .end local v1    # "$i$a$-with-SwitchKt$SwitchImpl$thumbOffset$1":I
    goto :goto_f

    .line 208
    .end local v21    # "isPressed$delegate":Landroidx/compose/runtime/State;
    .local v0, "isPressed$delegate":Landroidx/compose/runtime/State;
    :cond_1b
    move-object/from16 v21, v0

    .end local v0    # "isPressed$delegate":Landroidx/compose/runtime/State;
    .restart local v21    # "isPressed$delegate":Landroidx/compose/runtime/State;
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 199
    :goto_f
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 211
    .local v0, "thumbOffset":F
    sget-object v1, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/SwitchTokens;->getTrackShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object v1

    const/4 v11, 0x6

    invoke-static {v1, v4, v11}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    .line 213
    .local v1, "trackShape":Landroidx/compose/ui/graphics/Shape;
    nop

    .line 212
    sget-object v17, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v11, v17

    check-cast v11, Landroidx/compose/ui/Modifier;

    .line 213
    sget-object v17, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v6

    invoke-interface {v14, v11, v6}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 214
    sget v11, Landroidx/compose/material3/SwitchKt;->SwitchWidth:F

    invoke-static {v6, v11}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 215
    sget v11, Landroidx/compose/material3/SwitchKt;->SwitchHeight:F

    invoke-static {v6, v11}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 217
    sget-object v11, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual {v11}, Landroidx/compose/material3/tokens/SwitchTokens;->getTrackOutlineWidth-D9Ej5fM()F

    move-result v11

    .line 218
    invoke-virtual {v12, v13, v15}, Landroidx/compose/material3/SwitchColors;->borderColor-WaAFU9c$material3_release(ZZ)J

    move-result-wide v7

    .line 219
    nop

    .line 216
    invoke-static {v6, v11, v7, v8, v1}, Landroidx/compose/foundation/BorderKt;->border-xT4_qwU(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 221
    invoke-static {v6, v2, v3, v1}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 212
    nop

    .line 223
    .local v6, "modifier":Landroidx/compose/ui/Modifier;
    const/4 v7, 0x0

    move v8, v7

    .local v8, "$changed$iv":I
    const/4 v11, 0x0

    .local v11, "$i$f$Box":I
    const v7, 0x2bb5b5d7

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v4, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 672
    sget-object v22, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    move-object/from16 v23, v1

    .end local v1    # "trackShape":Landroidx/compose/ui/graphics/Shape;
    .local v23, "trackShape":Landroidx/compose/ui/graphics/Shape;
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v1

    .line 673
    .local v1, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    move-wide/from16 v24, v2

    .end local v2    # "trackColor":J
    .local v24, "trackColor":J
    const/4 v2, 0x0

    .line 676
    .local v2, "propagateMinConstraints$iv":Z
    shr-int/lit8 v3, v8, 0x3

    and-int/lit8 v3, v3, 0xe

    shr-int/lit8 v22, v8, 0x3

    and-int/lit8 v22, v22, 0x70

    or-int v3, v3, v22

    invoke-static {v1, v2, v4, v3}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    .local v3, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v22, v8, 0x3

    and-int/lit8 v22, v22, 0x70

    .line 677
    nop

    .local v22, "$changed$iv$iv":I
    const/16 v26, 0x0

    move-object/from16 v27, v1

    .end local v1    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v26, "$i$f$Layout":I
    .local v27, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const v1, -0x4ee9b9da

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 678
    move/from16 v29, v2

    const/4 v2, 0x0

    .end local v2    # "propagateMinConstraints$iv":Z
    .local v29, "propagateMinConstraints$iv":Z
    invoke-static {v4, v2}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v30

    .line 679
    .local v30, "compositeKeyHash$iv$iv":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v2

    .line 681
    .local v2, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v31, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v31

    .line 688
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v32

    move-object/from16 v33, v6

    .end local v6    # "modifier":Landroidx/compose/ui/Modifier;
    .local v33, "modifier":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v6, v22, 0x9

    and-int/lit16 v6, v6, 0x1c00

    const/16 v19, 0x6

    or-int/lit8 v6, v6, 0x6

    .line 680
    move-object/from16 v34, v31

    .local v6, "$changed$iv$iv$iv":I
    .local v34, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v31, v32

    .local v31, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v32, 0x0

    .line 689
    .local v32, "$i$f$ReusableComposeNode":I
    move/from16 v35, v11

    .end local v11    # "$i$f$Box":I
    .local v35, "$i$f$Box":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v11

    instance-of v11, v11, Landroidx/compose/runtime/Applier;

    if-nez v11, :cond_1c

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 690
    :cond_1c
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 691
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 692
    move-object/from16 v11, v34

    .end local v34    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v11, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    .line 694
    .end local v11    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v34    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_1d
    move-object/from16 v11, v34

    .end local v34    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v11    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 696
    :goto_10
    move-object/from16 v34, v11

    .end local v11    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v34    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .local v11, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v36, 0x0

    .line 683
    .local v36, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v37, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v37 .. v37}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    invoke-static {v11, v3, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 684
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    invoke-static {v11, v2, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 686
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    .local v14, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v37, 0x0

    .line 697
    .local v37, "$i$f$set-impl":I
    move-object/from16 v38, v11

    .local v38, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v39, 0x0

    .line 698
    .local v39, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v38 .. v38}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v40

    if-nez v40, :cond_1f

    move-object/from16 v40, v2

    .end local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v40, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v38 .. v38}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v41, v3

    .end local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v41, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_11

    :cond_1e
    move-object/from16 v3, v38

    goto :goto_12

    .end local v40    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v41    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_1f
    move-object/from16 v40, v2

    move-object/from16 v41, v3

    .line 699
    .end local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v40    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v41    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_11
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v38

    .end local v38    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 700
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v2, v14}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 702
    :goto_12
    nop

    .line 697
    .end local v3    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v39    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 702
    nop

    .line 687
    .end local v14    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v37    # "$i$f$set-impl":I
    nop

    .line 696
    .end local v11    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v36    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 703
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    shr-int/lit8 v3, v6, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v11, v31

    .end local v31    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v11, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v11, v2, v4, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    const v2, 0x7ab4aae9

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 705
    shr-int/lit8 v3, v6, 0x9

    and-int/lit8 v3, v3, 0xe

    .local v3, "$changed$iv":I
    move-object v14, v4

    .local v14, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v31, 0x0

    .line 706
    .local v31, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v2, -0x4ab8dd4f

    move/from16 v37, v3

    .end local v3    # "$changed$iv":I
    .local v37, "$changed$iv":I
    const-string v3, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v14, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v38, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v39, v8, 0x6

    and-int/lit8 v39, v39, 0x70

    const/16 v19, 0x6

    or-int/lit8 v39, v39, 0x6

    .local v39, "$changed":I
    check-cast v38, Landroidx/compose/foundation/layout/BoxScope;

    .local v38, "$this$SwitchImpl_0DmnUew_u24lambda_u2413":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v49, v14

    .local v49, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v50, v38

    .end local v38    # "$this$SwitchImpl_0DmnUew_u24lambda_u2413":Landroidx/compose/foundation/layout/BoxScope;
    .local v50, "$this$SwitchImpl_0DmnUew_u24lambda_u2413":Landroidx/compose/foundation/layout/BoxScope;
    const/16 v38, 0x0

    .line 224
    .local v38, "$i$a$-Box-SwitchKt$SwitchImpl$1":I
    const v2, 0x54b246f2

    move/from16 v52, v6

    .end local v6    # "$changed$iv$iv$iv":I
    .local v52, "$changed$iv$iv$iv":I
    const-string v6, "C228@8671L42,231@8868L134,225@8564L912:Switch.kt#uh7d8r"

    move/from16 v53, v8

    move-object/from16 v8, v49

    .end local v49    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    .local v53, "$changed$iv":I
    invoke-static {v8, v2, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    move-object v6, v3

    invoke-virtual {v12, v13, v15}, Landroidx/compose/material3/SwitchColors;->thumbColor-WaAFU9c$material3_release(ZZ)J

    move-result-wide v2

    .line 228
    .local v2, "resolvedThumbColor":J
    nop

    .line 227
    sget-object v42, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v49, v6

    move-object/from16 v6, v42

    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 228
    sget-object v42, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    move-object/from16 v54, v11

    .end local v11    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v54, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-virtual/range {v42 .. v42}, Landroidx/compose/ui/Alignment$Companion;->getCenterStart()Landroidx/compose/ui/Alignment;

    move-result-object v11

    move-object/from16 v55, v4

    move-object/from16 v4, v50

    .end local v50    # "$this$SwitchImpl_0DmnUew_u24lambda_u2413":Landroidx/compose/foundation/layout/BoxScope;
    .local v4, "$this$SwitchImpl_0DmnUew_u24lambda_u2413":Landroidx/compose/foundation/layout/BoxScope;
    .local v55, "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v6, v11}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const v11, 0x54b247c9

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(remember):Switch.kt#9igjgp"

    invoke-static {v8, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v11

    .line 229
    nop

    .local v11, "invalid$iv":Z
    move-object/from16 v42, v8

    .local v42, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v43, 0x0

    .line 707
    .local v43, "$i$f$cache":I
    nop

    .end local v4    # "$this$SwitchImpl_0DmnUew_u24lambda_u2413":Landroidx/compose/foundation/layout/BoxScope;
    .restart local v50    # "$this$SwitchImpl_0DmnUew_u24lambda_u2413":Landroidx/compose/foundation/layout/BoxScope;
    invoke-interface/range {v42 .. v42}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/16 v44, 0x0

    .line 708
    .local v44, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v11, :cond_21

    sget-object v45, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v46, v11

    .end local v11    # "invalid$iv":Z
    .local v46, "invalid$iv":Z
    invoke-virtual/range {v45 .. v45}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v4, v11, :cond_20

    goto :goto_13

    .line 712
    :cond_20
    move-object/from16 v45, v4

    move-object/from16 v11, v42

    goto :goto_14

    .line 708
    .end local v46    # "invalid$iv":Z
    .restart local v11    # "invalid$iv":Z
    :cond_21
    move/from16 v46, v11

    .line 709
    .end local v11    # "invalid$iv":Z
    .restart local v46    # "invalid$iv":Z
    :goto_13
    const/4 v11, 0x0

    .line 229
    .local v11, "$i$a$-cache-SwitchKt$SwitchImpl$1$1":I
    move-object/from16 v45, v4

    .end local v4    # "it$iv":Ljava/lang/Object;
    .local v45, "it$iv":Ljava/lang/Object;
    new-instance v4, Landroidx/compose/material3/SwitchKt$SwitchImpl$1$1$1;

    invoke-direct {v4, v0}, Landroidx/compose/material3/SwitchKt$SwitchImpl$1$1$1;-><init>(F)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 709
    .end local v11    # "$i$a$-cache-SwitchKt$SwitchImpl$1$1":I
    nop

    .line 710
    .local v4, "value$iv":Ljava/lang/Object;
    move-object/from16 v11, v42

    .end local v42    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v11, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 711
    nop

    .line 708
    .end local v4    # "value$iv":Ljava/lang/Object;
    :goto_14
    nop

    .line 707
    .end local v44    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v45    # "it$iv":Ljava/lang/Object;
    nop

    .line 229
    .end local v11    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v43    # "$i$f$cache":I
    .end local v46    # "invalid$iv":Z
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v6, v4}, Landroidx/compose/foundation/layout/OffsetKt;->offset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 231
    nop

    .line 233
    const/16 v42, 0x0

    .line 234
    sget-object v6, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-virtual {v6}, Landroidx/compose/material3/tokens/SwitchTokens;->getStateLayerSize-D9Ej5fM()F

    move-result v6

    .local v6, "arg0$iv":F
    const/4 v11, 0x2

    .local v11, "other$iv":I
    const/16 v43, 0x0

    .line 713
    .local v43, "$i$f$div-u2uoSUM":I
    move/from16 v56, v0

    .end local v0    # "thumbOffset":F
    .local v56, "thumbOffset":F
    int-to-float v0, v11

    div-float v0, v6, v0

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v43

    .end local v6    # "arg0$iv":F
    .end local v11    # "other$iv":I
    .end local v43    # "$i$f$div-u2uoSUM":I
    const-wide/16 v44, 0x0

    const/16 v47, 0x36

    const/16 v48, 0x4

    .line 232
    move-object/from16 v46, v8

    invoke-static/range {v42 .. v48}, Landroidx/compose/material/ripple/RippleKt;->rememberRipple-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    move-result-object v0

    .line 230
    invoke-static {v4, v10, v0}, Landroidx/compose/foundation/IndicationKt;->indication(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/Indication;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 237
    invoke-static {v0, v5}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 238
    invoke-static {v0, v2, v3, v9}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 239
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v4

    .line 226
    const/16 v6, 0x30

    .local v0, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v4, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v6, "$changed$iv":I
    const/4 v11, 0x0

    move-wide/from16 v42, v2

    const v2, 0x2bb5b5d7

    .end local v2    # "resolvedThumbColor":J
    .local v11, "$i$f$Box":I
    .local v42, "resolvedThumbColor":J
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v8, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 714
    const/4 v2, 0x0

    .line 717
    .local v2, "propagateMinConstraints$iv":Z
    shr-int/lit8 v3, v6, 0x3

    and-int/lit8 v3, v3, 0xe

    shr-int/lit8 v7, v6, 0x3

    and-int/lit8 v7, v7, 0x70

    or-int/2addr v3, v7

    invoke-static {v4, v2, v8, v3}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    .local v3, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v7, v6, 0x3

    and-int/lit8 v7, v7, 0x70

    .line 718
    nop

    .local v7, "$changed$iv$iv":I
    const/16 v20, 0x0

    move/from16 v44, v2

    const v2, -0x4ee9b9da

    .end local v2    # "propagateMinConstraints$iv":Z
    .local v20, "$i$f$Layout":I
    .local v44, "propagateMinConstraints$iv":Z
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 719
    const/4 v1, 0x0

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v2

    .line 720
    .local v2, "compositeKeyHash$iv$iv":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v1

    .line 722
    .local v1, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v28, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v28

    .line 729
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v45

    move-object/from16 v46, v0

    .end local v0    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v46, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v7, 0x9

    and-int/lit16 v0, v0, 0x1c00

    const/16 v19, 0x6

    or-int/lit8 v0, v0, 0x6

    .line 721
    nop

    .local v0, "$changed$iv$iv$iv":I
    move-object/from16 v47, v28

    .local v47, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v28, v45

    .local v28, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v45, 0x0

    .line 730
    .local v45, "$i$f$ReusableComposeNode":I
    move-object/from16 v48, v4

    .end local v4    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v48, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v4

    instance-of v4, v4, Landroidx/compose/runtime/Applier;

    if-nez v4, :cond_22

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 731
    :cond_22
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 732
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 733
    move-object/from16 v4, v47

    .end local v47    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v4, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_15

    .line 735
    .end local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v47    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_23
    move-object/from16 v4, v47

    .end local v47    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 737
    :goto_15
    move-object/from16 v47, v4

    .end local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v47    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .local v4, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v57, 0x0

    .line 724
    .local v57, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v58, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v59, v5

    .end local v5    # "thumbSizeDp":F
    .local v59, "thumbSizeDp":F
    invoke-virtual/range {v58 .. v58}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v4, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 725
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v4, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 727
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .local v5, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v58, 0x0

    .line 738
    .local v58, "$i$f$set-impl":I
    move-object/from16 v60, v4

    .local v60, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v61, 0x0

    .line 739
    .local v61, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v60 .. v60}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v62

    if-nez v62, :cond_25

    move-object/from16 v62, v1

    .end local v1    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v62, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v60 .. v60}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v63, v3

    .end local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v63, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_16

    :cond_24
    move-object/from16 v3, v60

    goto :goto_17

    .end local v62    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v63    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v1    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_25
    move-object/from16 v62, v1

    move-object/from16 v63, v3

    .line 740
    .end local v1    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v62    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v63    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v3, v60

    .end local v60    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 741
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1, v5}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 743
    :goto_17
    nop

    .line 738
    .end local v3    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v61    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 743
    nop

    .line 728
    .end local v5    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v58    # "$i$f$set-impl":I
    nop

    .line 737
    .end local v4    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v57    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 744
    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v3, v0, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v28

    .end local v28    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v4, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v4, v1, v8, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    const v1, 0x7ab4aae9

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 746
    shr-int/lit8 v1, v0, 0x9

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed$iv":I
    move-object v3, v8

    .local v3, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 747
    .local v5, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move/from16 v28, v0

    move/from16 v36, v1

    move-object/from16 v0, v49

    const v1, -0x4ab8dd4f

    .end local v0    # "$changed$iv$iv$iv":I
    .end local v1    # "$changed$iv":I
    .local v28, "$changed$iv$iv$iv":I
    .local v36, "$changed$iv":I
    invoke-static {v3, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v1, v6, 0x6

    and-int/lit8 v1, v1, 0x70

    const/16 v19, 0x6

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .local v0, "$this$SwitchImpl_0DmnUew_u24lambda_u2413_u24lambda_u2412":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v19, v3

    .local v19, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v49, 0x0

    .line 241
    .local v49, "$i$a$-Box-SwitchKt$SwitchImpl$1$2":I
    move-object/from16 v51, v0

    .end local v0    # "$this$SwitchImpl_0DmnUew_u24lambda_u2413_u24lambda_u2412":Landroidx/compose/foundation/layout/BoxScope;
    .local v51, "$this$SwitchImpl_0DmnUew_u24lambda_u2413_u24lambda_u2412":Landroidx/compose/foundation/layout/BoxScope;
    const v0, -0x79a24308

    move/from16 v57, v1

    .end local v1    # "$changed":I
    .local v57, "$changed":I
    const-string v1, "C:Switch.kt#uh7d8r"

    move/from16 v58, v2

    move-object/from16 v2, v19

    .end local v19    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v58, "compositeKeyHash$iv$iv":I
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v0, 0x54b249d7

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "242@9308L144"

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move-object/from16 v1, p5

    if-eqz v1, :cond_26

    .line 242
    invoke-virtual {v12, v13, v15}, Landroidx/compose/material3/SwitchColors;->iconColor-WaAFU9c$material3_release(ZZ)J

    move-result-wide v60

    .line 244
    .local v60, "iconColor":J
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    move-object/from16 v19, v4

    .end local v4    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v19, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-static/range {v60 .. v61}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    .line 245
    sget v4, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    const/16 v17, 0x0

    or-int/lit8 v4, v4, 0x0

    shr-int/lit8 v17, v18, 0xc

    and-int/lit8 v17, v17, 0x70

    or-int v4, v4, v17

    .line 243
    invoke-static {v0, v1, v2, v4}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_18

    .line 241
    .end local v19    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v60    # "iconColor":J
    .restart local v4    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    :cond_26
    move-object/from16 v19, v4

    .line 243
    .end local v4    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .restart local v19    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    :goto_18
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 241
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 248
    nop

    .line 747
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v49    # "$i$a$-Box-SwitchKt$SwitchImpl$1$2":I
    .end local v51    # "$this$SwitchImpl_0DmnUew_u24lambda_u2413_u24lambda_u2412":Landroidx/compose/foundation/layout/BoxScope;
    .end local v57    # "$changed":I
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 746
    .end local v3    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v36    # "$changed$iv":I
    nop

    .line 748
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 749
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 750
    nop

    .end local v19    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v28    # "$changed$iv$iv$iv":I
    .end local v45    # "$i$f$ReusableComposeNode":I
    .end local v47    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 751
    nop

    .end local v7    # "$changed$iv$iv":I
    .end local v20    # "$i$f$Layout":I
    .end local v58    # "compositeKeyHash$iv$iv":I
    .end local v62    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 752
    nop

    .line 224
    .end local v6    # "$changed$iv":I
    .end local v11    # "$i$f$Box":I
    .end local v44    # "propagateMinConstraints$iv":Z
    .end local v46    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v48    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v63    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 249
    .end local v42    # "resolvedThumbColor":J
    nop

    .line 706
    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v38    # "$i$a$-Box-SwitchKt$SwitchImpl$1":I
    .end local v39    # "$changed":I
    .end local v50    # "$this$SwitchImpl_0DmnUew_u24lambda_u2413":Landroidx/compose/foundation/layout/BoxScope;
    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 705
    .end local v14    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v31    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v37    # "$changed$iv":I
    nop

    .line 753
    invoke-interface/range {v55 .. v55}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 754
    invoke-interface/range {v55 .. v55}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 755
    nop

    .end local v32    # "$i$f$ReusableComposeNode":I
    .end local v34    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v52    # "$changed$iv$iv$iv":I
    .end local v54    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface/range {v55 .. v55}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 756
    nop

    .end local v22    # "$changed$iv$iv":I
    .end local v26    # "$i$f$Layout":I
    .end local v30    # "compositeKeyHash$iv$iv":I
    .end local v40    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v55 .. v55}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 757
    nop

    .end local v27    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v29    # "propagateMinConstraints$iv":Z
    .end local v35    # "$i$f$Box":I
    .end local v41    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v53    # "$changed$iv":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 250
    .end local v16    # "thumbValueDp":F
    .end local v21    # "isPressed$delegate":Landroidx/compose/runtime/State;
    .end local v23    # "trackShape":Landroidx/compose/ui/graphics/Shape;
    .end local v24    # "trackColor":J
    .end local v33    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v56    # "thumbOffset":F
    .end local v59    # "thumbSizeDp":F
    :cond_27
    :goto_19
    invoke-interface/range {v55 .. v55}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_28

    new-instance v16, Landroidx/compose/material3/SwitchKt$SwitchImpl$2;

    move-object/from16 v0, v16

    move/from16 v17, v18

    .end local v18    # "$dirty":I
    .local v17, "$dirty":I
    move-object/from16 v1, p0

    move/from16 v18, p11

    .end local p11    # "$dirty1":I
    .local v18, "$dirty1":I
    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v19, v55

    .end local v55    # "$composer":Landroidx/compose/runtime/Composer;
    .local v19, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Landroidx/compose/material3/SwitchKt$SwitchImpl$2;-><init>(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/graphics/Shape;FFFII)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v14, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1a

    .end local v17    # "$dirty":I
    .end local v19    # "$composer":Landroidx/compose/runtime/Composer;
    .local v18, "$dirty":I
    .restart local v55    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p11    # "$dirty1":I
    :cond_28
    move/from16 v17, v18

    move-object/from16 v19, v55

    move/from16 v18, p11

    .end local v55    # "$composer":Landroidx/compose/runtime/Composer;
    .end local p11    # "$dirty1":I
    .restart local v17    # "$dirty":I
    .local v18, "$dirty1":I
    .restart local v19    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_1a
    return-void
.end method

.method private static final SwitchImpl_0DmnUew$lambda$8(Landroidx/compose/runtime/State;)Z
    .locals 4
    .param p0, "$isPressed$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 189
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 758
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 189
    return v0
.end method

.method public static final synthetic access$SwitchImpl-0DmnUew(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/graphics/Shape;FFFLandroidx/compose/runtime/Composer;II)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/foundation/layout/BoxScope;
    .param p1, "checked"    # Z
    .param p2, "enabled"    # Z
    .param p3, "colors"    # Landroidx/compose/material3/SwitchColors;
    .param p4, "thumbValue"    # Landroidx/compose/runtime/State;
    .param p5, "thumbContent"    # Lkotlin/jvm/functions/Function2;
    .param p6, "interactionSource"    # Landroidx/compose/foundation/interaction/InteractionSource;
    .param p7, "thumbShape"    # Landroidx/compose/ui/graphics/Shape;
    .param p8, "uncheckedThumbDiameter"    # F
    .param p9, "minBound"    # F
    .param p10, "maxBound"    # F
    .param p11, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p12, "$changed"    # I
    .param p13, "$changed1"    # I

    .line 1
    invoke-static/range {p0 .. p13}, Landroidx/compose/material3/SwitchKt;->SwitchImpl-0DmnUew(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/graphics/Shape;FFFLandroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public static final synthetic access$getAnimationSpec$p()Landroidx/compose/animation/core/TweenSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/SwitchKt;->AnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    return-object v0
.end method

.method public static final getThumbDiameter()F
    .locals 1

    .line 252
    sget v0, Landroidx/compose/material3/SwitchKt;->ThumbDiameter:F

    return v0
.end method

.method public static final getUncheckedThumbDiameter()F
    .locals 1

    .line 253
    sget v0, Landroidx/compose/material3/SwitchKt;->UncheckedThumbDiameter:F

    return v0
.end method
