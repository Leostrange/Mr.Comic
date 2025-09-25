.class public final Landroidx/compose/material/SwitchKt;
.super Ljava/lang/Object;
.source "Switch.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwitch.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Switch.kt\nandroidx/compose/material/SwitchKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 7 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 8 Composer.kt\nandroidx/compose/runtime/Updater\n+ 9 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 10 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 11 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,422:1\n25#2:423\n25#2:432\n50#2:440\n49#2:441\n456#2,8:478\n464#2,3:492\n467#2,3:502\n25#2:507\n1116#3,6:424\n1116#3,6:433\n1116#3,6:442\n1116#3,6:448\n1116#3,6:454\n1116#3,6:496\n1116#3,6:508\n1116#3,6:514\n1116#3,6:520\n1116#3,6:529\n74#4:430\n74#4:439\n74#4:460\n74#4:526\n74#4:527\n1#5:431\n68#6,6:461\n74#6:495\n78#6:506\n79#7,11:467\n92#7:505\n3737#8,6:486\n51#9:528\n58#9:548\n81#10:535\n107#10,2:536\n81#10:538\n81#10:539\n81#10:540\n81#10:541\n81#10:542\n154#11:543\n154#11:544\n154#11:545\n154#11:546\n154#11:547\n154#11:549\n154#11:550\n154#11:551\n*S KotlinDebug\n*F\n+ 1 Switch.kt\nandroidx/compose/material/SwitchKt\n*L\n99#1:423\n108#1:432\n110#1:440\n110#1:441\n153#1:478,8\n153#1:492,3\n153#1:502,3\n221#1:507\n99#1:424,6\n108#1:433,6\n110#1:442,6\n124#1:448,6\n133#1:454,6\n179#1:496,6\n221#1:508,6\n223#1:514,6\n246#1:520,6\n262#1:529,6\n103#1:430\n109#1:439\n138#1:460\n250#1:526\n251#1:527\n153#1:461,6\n153#1:495\n153#1:506\n153#1:467,11\n153#1:505\n153#1:486,6\n251#1:528\n293#1:548\n108#1:535\n108#1:536,2\n122#1:538\n123#1:539\n242#1:540\n249#1:541\n252#1:542\n284#1:543\n285#1:544\n286#1:545\n288#1:546\n290#1:547\n297#1:549\n298#1:550\n421#1:551\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u001aS\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!H\u0007\u00a2\u0006\u0002\u0010\"\u001a?\u0010#\u001a\u00020\u0016*\u00020$2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010 \u001a\u00020!2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00020&2\u0006\u0010\u001e\u001a\u00020\'H\u0003\u00a2\u0006\u0002\u0010(\u001a.\u0010)\u001a\u00020\u0016*\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u00022\u0006\u0010.\u001a\u00020\u0002H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008/\u00100\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u0010\u0010\u0006\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u000e\u0010\u0007\u001a\u00020\u0002X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0008\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u0010\u0010\t\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u0010\u0010\n\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u0016\u0010\u000b\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0005\u001a\u0004\u0008\u000c\u0010\r\"\u0010\u0010\u000e\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u0010\u0010\u000f\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u0010\u0010\u0010\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u0016\u0010\u0011\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0005\u001a\u0004\u0008\u0012\u0010\r\"\u0016\u0010\u0013\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0005\u001a\u0004\u0008\u0014\u0010\r\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u00061\u00b2\u0006\n\u00102\u001a\u00020\u0018X\u008a\u008e\u0002\u00b2\u0006\u0018\u00103\u001a\u0010\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u001aX\u008a\u0084\u0002\u00b2\u0006\n\u00104\u001a\u00020\u0018X\u008a\u0084\u0002\u00b2\u0006\n\u0010+\u001a\u00020,X\u008a\u0084\u0002\u00b2\u0006\n\u00105\u001a\u00020,X\u008a\u0084\u0002\u00b2\u0006\n\u00106\u001a\u00020,X\u008a\u0084\u0002"
    }
    d2 = {
        "AnimationSpec",
        "Landroidx/compose/animation/core/TweenSpec;",
        "",
        "DefaultSwitchPadding",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "SwitchHeight",
        "SwitchPositionalThreshold",
        "SwitchVelocityThreshold",
        "SwitchWidth",
        "ThumbDefaultElevation",
        "ThumbDiameter",
        "getThumbDiameter",
        "()F",
        "ThumbPathLength",
        "ThumbPressedElevation",
        "ThumbRippleRadius",
        "TrackStrokeWidth",
        "getTrackStrokeWidth",
        "TrackWidth",
        "getTrackWidth",
        "Switch",
        "",
        "checked",
        "",
        "onCheckedChange",
        "Lkotlin/Function1;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "enabled",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "colors",
        "Landroidx/compose/material/SwitchColors;",
        "(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SwitchColors;Landroidx/compose/runtime/Composer;II)V",
        "SwitchImpl",
        "Landroidx/compose/foundation/layout/BoxScope;",
        "thumbValue",
        "Lkotlin/Function0;",
        "Landroidx/compose/foundation/interaction/InteractionSource;",
        "(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material/SwitchColors;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)V",
        "drawTrack",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "trackColor",
        "Landroidx/compose/ui/graphics/Color;",
        "trackWidth",
        "strokeWidth",
        "drawTrack-RPmYEkk",
        "(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFF)V",
        "material_release",
        "forceAnimationCheck",
        "currentOnCheckedChange",
        "currentChecked",
        "thumbColor",
        "resolvedThumbColor"
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

.field private static final DefaultSwitchPadding:F

.field private static final SwitchHeight:F

.field private static final SwitchPositionalThreshold:F = 0.7f

.field private static final SwitchVelocityThreshold:F

.field private static final SwitchWidth:F

.field private static final ThumbDefaultElevation:F

.field private static final ThumbDiameter:F

.field private static final ThumbPathLength:F

.field private static final ThumbPressedElevation:F

.field private static final ThumbRippleRadius:F

.field private static final TrackStrokeWidth:F

.field private static final TrackWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 284
    const/16 v0, 0x22

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 543
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 284
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/SwitchKt;->TrackWidth:F

    .line 285
    const/16 v0, 0xe

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 544
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 285
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/SwitchKt;->TrackStrokeWidth:F

    .line 286
    const/16 v0, 0x14

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 545
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 286
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/SwitchKt;->ThumbDiameter:F

    .line 288
    const/16 v0, 0x18

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 546
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 288
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/SwitchKt;->ThumbRippleRadius:F

    .line 290
    const/4 v0, 0x2

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 547
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 290
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/SwitchKt;->DefaultSwitchPadding:F

    .line 291
    sget v0, Landroidx/compose/material/SwitchKt;->TrackWidth:F

    sput v0, Landroidx/compose/material/SwitchKt;->SwitchWidth:F

    .line 292
    sget v0, Landroidx/compose/material/SwitchKt;->ThumbDiameter:F

    sput v0, Landroidx/compose/material/SwitchKt;->SwitchHeight:F

    .line 293
    sget v0, Landroidx/compose/material/SwitchKt;->TrackWidth:F

    .local v0, "arg0$iv":F
    sget v1, Landroidx/compose/material/SwitchKt;->ThumbDiameter:F

    .local v1, "other$iv":F
    const/4 v2, 0x0

    .line 548
    .local v2, "$i$f$minus-5rwHm24":I
    sub-float v3, v0, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 293
    .end local v0    # "arg0$iv":F
    .end local v1    # "other$iv":F
    .end local v2    # "$i$f$minus-5rwHm24":I
    sput v0, Landroidx/compose/material/SwitchKt;->ThumbPathLength:F

    .line 295
    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material/SwitchKt;->AnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    .line 297
    const/4 v0, 0x1

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 549
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 297
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/SwitchKt;->ThumbDefaultElevation:F

    .line 298
    const/4 v0, 0x6

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 550
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 298
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/SwitchKt;->ThumbPressedElevation:F

    .line 421
    const/16 v0, 0x7d

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 551
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 421
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/SwitchKt;->SwitchVelocityThreshold:F

    return-void
.end method

.method public static final Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SwitchColors;Landroidx/compose/runtime/Composer;II)V
    .locals 45
    .param p0, "checked"    # Z
    .param p1, "onCheckedChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "enabled"    # Z
    .param p4, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p5, "colors"    # Landroidx/compose/material/SwitchColors;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/material/SwitchColors;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 101
    move/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p7

    const v0, 0x18ab249

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Switch)P(!1,5,4,2,3)98@4576L39,99@4659L8,*102@4731L7,107@5113L34,108@5202L7,109@5279L447,121@5761L37,122@5825L29,123@5859L354,132@6218L178,137@6434L7,152@6875L1050:Switch.kt#jmzs0o"

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p7

    .local v1, "$dirty":I
    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v11, 0xe

    if-nez v2, :cond_2

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v11, 0x70

    if-nez v2, :cond_5

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v3, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v11, 0x380

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v4, p8, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move/from16 v5, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v5, v11, 0x1c00

    if-nez v5, :cond_b

    move/from16 v5, p3

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v5, p3

    :goto_7
    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v12, p4

    goto :goto_9

    :cond_c
    const v12, 0xe000

    and-int/2addr v12, v11

    if-nez v12, :cond_e

    move-object/from16 v12, p4

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v12, p4

    :goto_9
    const/high16 v35, 0x70000

    and-int v13, v11, v35

    if-nez v13, :cond_11

    and-int/lit8 v13, p8, 0x20

    if-nez v13, :cond_f

    move-object/from16 v15, p5

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    const/high16 v13, 0x20000

    goto :goto_a

    :cond_f
    move-object/from16 v15, p5

    :cond_10
    const/high16 v13, 0x10000

    :goto_a
    or-int/2addr v1, v13

    goto :goto_b

    :cond_11
    move-object/from16 v15, p5

    :goto_b
    const v13, 0x5b6db

    and-int/2addr v13, v1

    const v14, 0x12492

    if-ne v13, v14, :cond_13

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v13

    if-nez v13, :cond_12

    goto :goto_c

    .line 183
    :cond_12
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v13, v1

    move-object v11, v3

    move/from16 v20, v5

    move-object/from16 v29, v15

    goto/16 :goto_23

    .line 101
    :cond_13
    :goto_c
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v13, v11, 0x1

    const-string v14, "CC(remember):Composables.kt#9igjgp"

    const v7, -0x1d58f75c

    const v36, -0x70001

    if-eqz v13, :cond_16

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v13

    if-eqz v13, :cond_14

    goto :goto_d

    .line 100
    :cond_14
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, p8, 0x20

    if-eqz v2, :cond_15

    and-int v1, v1, v36

    :cond_15
    move-object v7, v3

    move/from16 v20, v5

    move-object/from16 v28, v12

    move-object v6, v14

    move-object/from16 v29, v15

    move v15, v1

    goto/16 :goto_12

    .line 101
    :cond_16
    :goto_d
    if-eqz v2, :cond_17

    .line 97
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_e

    .line 101
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_17
    move-object v2, v3

    .line 97
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_e
    if-eqz v4, :cond_18

    .line 98
    const/4 v3, 0x1

    .end local p3    # "enabled":Z
    .local v3, "enabled":Z
    goto :goto_f

    .line 97
    .end local v3    # "enabled":Z
    .restart local p3    # "enabled":Z
    :cond_18
    move v3, v5

    .line 98
    .end local p3    # "enabled":Z
    .restart local v3    # "enabled":Z
    :goto_f
    if-eqz v6, :cond_1a

    .line 99
    const/4 v4, 0x0

    .local v4, "$changed$iv":I
    const/4 v5, 0x0

    .local v5, "$i$f$remember":I
    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v8, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 423
    const/4 v6, 0x0

    .local v6, "invalid$iv$iv":Z
    move-object v13, v8

    .local v13, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 424
    .local v16, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 425
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v7, v0, :cond_19

    .line 426
    const/4 v0, 0x0

    .line 99
    .local v0, "$i$a$-remember-SwitchKt$Switch$1":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    .line 426
    .end local v0    # "$i$a$-remember-SwitchKt$Switch$1":I
    nop

    .line 427
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 428
    nop

    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_10

    .line 429
    :cond_19
    move-object v0, v7

    .line 425
    :goto_10
    nop

    .line 424
    .end local v7    # "it$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 423
    .end local v6    # "invalid$iv$iv":Z
    .end local v13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v4    # "$changed$iv":I
    .end local v5    # "$i$f$remember":I
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .end local p4    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    goto :goto_11

    .line 98
    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p4    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_1a
    move-object v0, v12

    .line 423
    .end local p4    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_11
    and-int/lit8 v4, p8, 0x20

    if-eqz v4, :cond_1b

    .line 100
    sget-object v12, Landroidx/compose/material/SwitchDefaults;->INSTANCE:Landroidx/compose/material/SwitchDefaults;

    const-wide/16 v4, 0x0

    move-object v6, v14

    move-wide v13, v4

    move-wide v15, v4

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x6

    const/16 v34, 0x3ff

    move-object/from16 v31, v8

    invoke-virtual/range {v12 .. v34}, Landroidx/compose/material/SwitchDefaults;->colors-SQMK_m0(JJFJJFJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material/SwitchColors;

    move-result-object v4

    .end local p5    # "colors":Landroidx/compose/material/SwitchColors;
    .local v4, "colors":Landroidx/compose/material/SwitchColors;
    and-int v1, v1, v36

    move-object/from16 v28, v0

    move v15, v1

    move-object v7, v2

    move/from16 v20, v3

    move-object/from16 v29, v4

    goto :goto_12

    .line 423
    .end local v4    # "colors":Landroidx/compose/material/SwitchColors;
    .restart local p5    # "colors":Landroidx/compose/material/SwitchColors;
    :cond_1b
    move-object v6, v14

    move-object/from16 v29, p5

    move-object/from16 v28, v0

    move v15, v1

    move-object v7, v2

    move/from16 v20, v3

    .line 100
    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v1    # "$dirty":I
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "enabled":Z
    .end local p5    # "colors":Landroidx/compose/material/SwitchColors;
    .local v7, "modifier":Landroidx/compose/ui/Modifier;
    .local v15, "$dirty":I
    .local v20, "enabled":Z
    .local v28, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v29, "colors":Landroidx/compose/material/SwitchColors;
    :goto_12
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 101
    const/4 v0, -0x1

    const-string/jumbo v1, "androidx.compose.material.Switch (Switch.kt:100)"

    const v2, 0x18ab249

    invoke-static {v2, v15, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 102
    :cond_1c
    const/4 v14, 0x0

    .line 103
    .local v14, "minBound":F
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .line 430
    .local v2, "$i$f$getCurrent":I
    const v3, 0x789c5f52

    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v8, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 103
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    move-object v0, v5

    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 431
    .local v0, "$this$Switch_u24lambda_u241":Landroidx/compose/ui/unit/Density;
    const/4 v1, 0x0

    .line 103
    .local v1, "$i$a$-with-SwitchKt$Switch$maxBound$1":I
    sget v2, Landroidx/compose/material/SwitchKt;->ThumbPathLength:F

    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v13

    .line 108
    .end local v0    # "$this$Switch_u24lambda_u241":Landroidx/compose/ui/unit/Density;
    .end local v1    # "$i$a$-with-SwitchKt$Switch$maxBound$1":I
    .local v13, "maxBound":F
    const/4 v12, 0x0

    move v0, v12

    .local v0, "$changed$iv":I
    const/4 v1, 0x0

    const v2, -0x1d58f75c

    .local v1, "$i$f$remember":I
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v8, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 432
    const/4 v2, 0x0

    .local v2, "invalid$iv$iv":Z
    move-object v5, v8

    .local v5, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 433
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 434
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    const/4 v11, 0x0

    if-ne v3, v12, :cond_1d

    .line 435
    const/4 v12, 0x0

    .line 108
    .local v12, "$i$a$-remember-SwitchKt$Switch$forceAnimationCheck$2":I
    move/from16 p4, v0

    const/16 v17, 0x0

    .end local v0    # "$changed$iv":I
    .local p4, "$changed$iv":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move/from16 p5, v1

    const/4 v1, 0x2

    .end local v1    # "$i$f$remember":I
    .local p5, "$i$f$remember":I
    invoke-static {v0, v11, v1, v11}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    .line 435
    .end local v12    # "$i$a$-remember-SwitchKt$Switch$forceAnimationCheck$2":I
    nop

    .line 436
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 437
    nop

    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_13

    .line 438
    .end local p4    # "$changed$iv":I
    .end local p5    # "$i$f$remember":I
    .local v0, "$changed$iv":I
    .restart local v1    # "$i$f$remember":I
    :cond_1d
    move/from16 p4, v0

    move/from16 p5, v1

    .end local v0    # "$changed$iv":I
    .end local v1    # "$i$f$remember":I
    .restart local p4    # "$changed$iv":I
    .restart local p5    # "$i$f$remember":I
    move-object v0, v3

    .line 434
    :goto_13
    nop

    .line 433
    .end local v3    # "it$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 432
    .end local v2    # "invalid$iv$iv":Z
    .end local v5    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 108
    .end local p4    # "$changed$iv":I
    .end local p5    # "$i$f$remember":I
    move-object v12, v0

    check-cast v12, Landroidx/compose/runtime/MutableState;

    .line 109
    .local v12, "forceAnimationCheck$delegate":Landroidx/compose/runtime/MutableState;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .line 439
    .local v2, "$i$f$getCurrent":I
    const v3, 0x789c5f52

    invoke-static {v8, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 109
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 431
    .local v0, "$this$Switch_u24lambda_u245":Landroidx/compose/ui/unit/Density;
    const/4 v1, 0x0

    .line 109
    .local v1, "$i$a$-with-SwitchKt$Switch$switchVelocityThresholdPx$1":I
    sget v2, Landroidx/compose/material/SwitchKt;->SwitchVelocityThreshold:F

    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v6

    .end local v0    # "$this$Switch_u24lambda_u245":Landroidx/compose/ui/unit/Density;
    .end local v1    # "$i$a$-with-SwitchKt$Switch$switchVelocityThresholdPx$1":I
    .local v6, "switchVelocityThresholdPx":F
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 110
    nop

    .local v0, "key1$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v1, "key2$iv":Ljava/lang/Object;
    move v3, v2

    .local v3, "$changed$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$remember":I
    const v5, 0x1e7b2b64

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v8, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 440
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    or-int v5, v5, v16

    .line 441
    move-object/from16 p4, v8

    .local v5, "invalid$iv$iv":Z
    .local p4, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 442
    .local v16, "$i$f$cache":I
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 443
    .restart local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v5, :cond_1f

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v19, v0

    .end local v0    # "key1$iv":Ljava/lang/Object;
    .local v19, "key1$iv":Ljava/lang/Object;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v11, v0, :cond_1e

    goto :goto_14

    .line 447
    :cond_1e
    move-object/from16 v22, v1

    move-object v0, v11

    move-object/from16 v1, p4

    goto :goto_15

    .line 443
    .end local v19    # "key1$iv":Ljava/lang/Object;
    .restart local v0    # "key1$iv":Ljava/lang/Object;
    :cond_1f
    move-object/from16 v19, v0

    .line 444
    .end local v0    # "key1$iv":Ljava/lang/Object;
    .restart local v19    # "key1$iv":Ljava/lang/Object;
    :goto_14
    const/4 v0, 0x0

    .line 113
    .local v0, "$i$a$-remember-SwitchKt$Switch$anchoredDraggableState$1":I
    invoke-static {}, Landroidx/compose/material/SwitchKt;->access$getAnimationSpec$p()Landroidx/compose/animation/core/TweenSpec;

    move-result-object v18

    .line 114
    move/from16 v21, v0

    .end local v0    # "$i$a$-remember-SwitchKt$Switch$anchoredDraggableState$1":I
    .local v21, "$i$a$-remember-SwitchKt$Switch$anchoredDraggableState$1":I
    new-instance v0, Landroidx/compose/material/SwitchKt$Switch$anchoredDraggableState$1$1;

    invoke-direct {v0, v14, v13}, Landroidx/compose/material/SwitchKt$Switch$anchoredDraggableState$1$1;-><init>(FF)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Landroidx/compose/material/AnchoredDraggableKt;->DraggableAnchors(Lkotlin/jvm/functions/Function1;)Landroidx/compose/material/DraggableAnchors;

    move-result-object v38

    .line 111
    new-instance v0, Landroidx/compose/material/AnchoredDraggableState;

    .line 112
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    .line 114
    nop

    .line 118
    sget-object v22, Landroidx/compose/material/SwitchKt$Switch$anchoredDraggableState$1$2;->INSTANCE:Landroidx/compose/material/SwitchKt$Switch$anchoredDraggableState$1$2;

    move-object/from16 v39, v22

    check-cast v39, Lkotlin/jvm/functions/Function1;

    .line 119
    move-object/from16 v22, v1

    .end local v1    # "key2$iv":Ljava/lang/Object;
    .local v22, "key2$iv":Ljava/lang/Object;
    new-instance v1, Landroidx/compose/material/SwitchKt$Switch$anchoredDraggableState$1$3;

    invoke-direct {v1, v6}, Landroidx/compose/material/SwitchKt$Switch$anchoredDraggableState$1$3;-><init>(F)V

    move-object/from16 v40, v1

    check-cast v40, Lkotlin/jvm/functions/Function0;

    .line 113
    move-object/from16 v41, v18

    check-cast v41, Landroidx/compose/animation/core/AnimationSpec;

    .line 111
    const/16 v42, 0x0

    const/16 v43, 0x20

    const/16 v44, 0x0

    move-object/from16 v36, v0

    invoke-direct/range {v36 .. v44}, Landroidx/compose/material/AnchoredDraggableState;-><init>(Ljava/lang/Object;Landroidx/compose/material/DraggableAnchors;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 444
    .end local v21    # "$i$a$-remember-SwitchKt$Switch$anchoredDraggableState$1":I
    nop

    .line 445
    .local v0, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v1, p4

    .end local p4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v1, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 446
    nop

    .line 443
    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    :goto_15
    nop

    .line 442
    .end local v11    # "it$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 441
    .end local v1    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "invalid$iv$iv":Z
    .end local v16    # "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 110
    .end local v2    # "$i$f$remember":I
    .end local v3    # "$changed$iv":I
    .end local v19    # "key1$iv":Ljava/lang/Object;
    .end local v22    # "key2$iv":Ljava/lang/Object;
    move-object v11, v0

    check-cast v11, Landroidx/compose/material/AnchoredDraggableState;

    .line 122
    .local v11, "anchoredDraggableState":Landroidx/compose/material/AnchoredDraggableState;
    shr-int/lit8 v0, v15, 0x3

    and-int/lit8 v0, v0, 0xe

    invoke-static {v10, v8, v0}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v5

    .line 123
    .local v5, "currentOnCheckedChange$delegate":Landroidx/compose/runtime/State;
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    and-int/lit8 v1, v15, 0xe

    invoke-static {v0, v8, v1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v3

    .line 124
    .local v3, "currentChecked$delegate":Landroidx/compose/runtime/State;
    const v0, -0x625d8048

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .local v0, "invalid$iv":Z
    move-object v1, v8

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 448
    .local v2, "$i$f$cache":I
    move/from16 p4, v2

    .end local v2    # "$i$f$cache":I
    .local p4, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 449
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_21

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v18, v0

    .end local v0    # "invalid$iv":Z
    .local v18, "invalid$iv":Z
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_20

    goto :goto_16

    .line 453
    :cond_20
    move-object v0, v2

    goto :goto_17

    .line 449
    .end local v18    # "invalid$iv":Z
    .restart local v0    # "invalid$iv":Z
    :cond_21
    move/from16 v18, v0

    .line 450
    .end local v0    # "invalid$iv":Z
    .restart local v18    # "invalid$iv":Z
    :goto_16
    const/4 v0, 0x0

    .line 124
    .local v0, "$i$a$-cache-SwitchKt$Switch$2":I
    new-instance v17, Landroidx/compose/material/SwitchKt$Switch$2$1;

    const/16 v26, 0x0

    move-object/from16 v21, v17

    move-object/from16 v22, v11

    move-object/from16 v23, v3

    move-object/from16 v24, v5

    move-object/from16 v25, v12

    invoke-direct/range {v21 .. v26}, Landroidx/compose/material/SwitchKt$Switch$2$1;-><init>(Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v17, Lkotlin/jvm/functions/Function2;

    .line 450
    .end local v0    # "$i$a$-cache-SwitchKt$Switch$2":I
    move-object/from16 v0, v17

    .line 451
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 452
    nop

    .line 449
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_17
    nop

    .line 448
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 124
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "invalid$iv":Z
    .end local p4    # "$i$f$cache":I
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/16 v1, 0x40

    invoke-static {v11, v0, v8, v1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 133
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v12}, Landroidx/compose/material/SwitchKt;->Switch$lambda$3(Landroidx/compose/runtime/MutableState;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const v2, -0x625d7edb

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    or-int v2, v2, v16

    .local v2, "invalid$iv":Z
    move-object/from16 p4, v8

    .local p4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 454
    .local v16, "$i$f$cache":I
    move-object/from16 v17, v3

    .end local v3    # "currentChecked$delegate":Landroidx/compose/runtime/State;
    .local v17, "currentChecked$delegate":Landroidx/compose/runtime/State;
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 455
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_23

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v21, v2

    .end local v2    # "invalid$iv":Z
    .local v21, "invalid$iv":Z
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_22

    goto :goto_18

    .line 459
    :cond_22
    move-object v2, v3

    move-object/from16 v22, v2

    move-object/from16 v3, p4

    goto :goto_19

    .line 455
    .end local v21    # "invalid$iv":Z
    .restart local v2    # "invalid$iv":Z
    :cond_23
    move/from16 v21, v2

    .line 456
    .end local v2    # "invalid$iv":Z
    .restart local v21    # "invalid$iv":Z
    :goto_18
    const/4 v2, 0x0

    .line 133
    .local v2, "$i$a$-cache-SwitchKt$Switch$3":I
    move/from16 v19, v2

    .end local v2    # "$i$a$-cache-SwitchKt$Switch$3":I
    .local v19, "$i$a$-cache-SwitchKt$Switch$3":I
    new-instance v2, Landroidx/compose/material/SwitchKt$Switch$3$1;

    move-object/from16 v22, v3

    const/4 v3, 0x0

    .end local v3    # "it$iv":Ljava/lang/Object;
    .local v22, "it$iv":Ljava/lang/Object;
    invoke-direct {v2, v9, v11, v3}, Landroidx/compose/material/SwitchKt$Switch$3$1;-><init>(ZLandroidx/compose/material/AnchoredDraggableState;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 456
    .end local v19    # "$i$a$-cache-SwitchKt$Switch$3":I
    nop

    .line 457
    .local v2, "value$iv":Ljava/lang/Object;
    move-object/from16 v3, p4

    .end local p4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 458
    nop

    .line 455
    .end local v2    # "value$iv":Ljava/lang/Object;
    :goto_19
    nop

    .line 454
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v22    # "it$iv":Ljava/lang/Object;
    nop

    .line 133
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    .end local v21    # "invalid$iv":Z
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    and-int/lit8 v3, v15, 0xe

    or-int/lit16 v3, v3, 0x200

    invoke-static {v0, v1, v2, v8, v3}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 138
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .line 460
    .local v2, "$i$f$getCurrent":I
    const v3, 0x789c5f52

    invoke-static {v8, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 138
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    const/16 v16, 0x1

    if-ne v3, v0, :cond_24

    move/from16 v25, v16

    goto :goto_1a

    :cond_24
    const/16 v25, 0x0

    .line 140
    .local v25, "isRtl":Z
    :goto_1a
    if-eqz v10, :cond_25

    .line 141
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 145
    sget-object v1, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/Role$Companion;->getSwitch-o7Vup1c()I

    move-result v1

    .line 141
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 142
    nop

    .line 146
    nop

    .line 147
    const/4 v3, 0x0

    .line 144
    nop

    .line 145
    invoke-static {v1}, Landroidx/compose/ui/semantics/Role;->box-impl(I)Landroidx/compose/ui/semantics/Role;

    move-result-object v18

    .line 143
    nop

    .line 141
    move/from16 v1, p0

    move-object/from16 v2, v28

    move-object/from16 v30, v17

    .end local v17    # "currentChecked$delegate":Landroidx/compose/runtime/State;
    .local v30, "currentChecked$delegate":Landroidx/compose/runtime/State;
    move/from16 v4, v20

    move-object/from16 v31, v5

    .end local v5    # "currentOnCheckedChange$delegate":Landroidx/compose/runtime/State;
    .local v31, "currentOnCheckedChange$delegate":Landroidx/compose/runtime/State;
    move-object/from16 v5, v18

    move/from16 v32, v6

    .end local v6    # "switchVelocityThresholdPx":F
    .local v32, "switchVelocityThresholdPx":F
    move-object/from16 v6, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/selection/ToggleableKt;->toggleable-O2vRcR0(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_1b

    .line 150
    .end local v30    # "currentChecked$delegate":Landroidx/compose/runtime/State;
    .end local v31    # "currentOnCheckedChange$delegate":Landroidx/compose/runtime/State;
    .end local v32    # "switchVelocityThresholdPx":F
    .restart local v5    # "currentOnCheckedChange$delegate":Landroidx/compose/runtime/State;
    .restart local v6    # "switchVelocityThresholdPx":F
    .restart local v17    # "currentChecked$delegate":Landroidx/compose/runtime/State;
    :cond_25
    move-object/from16 v31, v5

    move/from16 v32, v6

    move-object/from16 v30, v17

    .end local v5    # "currentOnCheckedChange$delegate":Landroidx/compose/runtime/State;
    .end local v6    # "switchVelocityThresholdPx":F
    .end local v17    # "currentChecked$delegate":Landroidx/compose/runtime/State;
    .restart local v30    # "currentChecked$delegate":Landroidx/compose/runtime/State;
    .restart local v31    # "currentOnCheckedChange$delegate":Landroidx/compose/runtime/State;
    .restart local v32    # "switchVelocityThresholdPx":F
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 140
    :goto_1b
    nop

    .line 139
    nop

    .line 154
    .local v0, "toggleableModifier":Landroidx/compose/ui/Modifier;
    nop

    .line 156
    if-eqz v10, :cond_26

    .line 157
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    invoke-static {v1}, Landroidx/compose/material/InteractiveComponentSizeKt;->minimumInteractiveComponentSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_1c

    .line 159
    :cond_26
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 155
    :goto_1c
    invoke-interface {v7, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 162
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v21

    .line 164
    nop

    .line 165
    sget-object v23, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 166
    if-eqz v20, :cond_27

    if-eqz v10, :cond_27

    move/from16 v24, v16

    goto :goto_1d

    :cond_27
    const/16 v24, 0x0

    .line 167
    :goto_1d
    nop

    .line 168
    nop

    .line 169
    const/16 v27, 0x0

    .line 163
    move-object/from16 v22, v11

    move-object/from16 v26, v28

    invoke-static/range {v21 .. v27}, Landroidx/compose/material/AnchoredDraggableKt;->anchoredDraggable(Landroidx/compose/ui/Modifier;Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Z)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 171
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 172
    sget v2, Landroidx/compose/material/SwitchKt;->DefaultSwitchPadding:F

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 173
    sget v2, Landroidx/compose/material/SwitchKt;->SwitchWidth:F

    sget v3, Landroidx/compose/material/SwitchKt;->SwitchHeight:F

    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 153
    nop

    .local v1, "modifier$iv":Landroidx/compose/ui/Modifier;
    move v2, v5

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .local v3, "$i$f$Box":I
    const v4, 0x2bb5b5d7

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v8, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 461
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v4

    .line 462
    .local v4, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v5, 0x0

    .line 465
    .local v5, "propagateMinConstraints$iv":Z
    shr-int/lit8 v6, v2, 0x3

    and-int/lit8 v6, v6, 0xe

    shr-int/lit8 v16, v2, 0x3

    and-int/lit8 v16, v16, 0x70

    or-int v6, v6, v16

    invoke-static {v4, v5, v8, v6}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    .local v6, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v16, v2, 0x3

    and-int/lit8 v16, v16, 0x70

    .line 466
    move/from16 v21, v16

    .local v21, "$changed$iv$iv":I
    const/16 v22, 0x0

    move-object/from16 p2, v0

    .end local v0    # "toggleableModifier":Landroidx/compose/ui/Modifier;
    .local v22, "$i$f$Layout":I
    .local p2, "toggleableModifier":Landroidx/compose/ui/Modifier;
    const v0, -0x4ee9b9da

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v8, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 467
    const/4 v0, 0x0

    invoke-static {v8, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v0

    .line 468
    .local v0, "compositeKeyHash$iv$iv":I
    move/from16 p3, v3

    .end local v3    # "$i$f$Box":I
    .local p3, "$i$f$Box":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v3

    .line 470
    .local v3, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    .line 477
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v17

    move-object/from16 p4, v1

    .end local v1    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local p4, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v1, v21, 0x9

    and-int/lit16 v1, v1, 0x1c00

    or-int/lit8 v1, v1, 0x6

    .line 469
    move-object/from16 p5, v16

    .local p5, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 p6, v17

    .local v1, "$changed$iv$iv$iv":I
    .local p6, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v23, 0x0

    .line 478
    .local v23, "$i$f$ReusableComposeNode":I
    move-object/from16 v24, v4

    .end local v4    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v24, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v4

    instance-of v4, v4, Landroidx/compose/runtime/Applier;

    if-nez v4, :cond_28

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 479
    :cond_28
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 480
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 481
    move-object/from16 v4, p5

    .end local p5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v4, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1e

    .line 483
    .end local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local p5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_29
    move-object/from16 v4, p5

    .end local p5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 485
    :goto_1e
    move-object/from16 v26, v4

    .end local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v26, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .local v4, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 472
    .local v16, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 p5, v5

    .end local v5    # "propagateMinConstraints$iv":Z
    .local p5, "propagateMinConstraints$iv":Z
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v4, v6, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 473
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v4, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 475
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .local v5, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v17, 0x0

    .line 486
    .local v17, "$i$f$set-impl":I
    move-object/from16 v18, v4

    .local v18, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 487
    .local v19, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v27

    if-nez v27, :cond_2b

    move-object/from16 v27, v3

    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v27, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v33, v6

    .end local v6    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v33, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_1f

    :cond_2a
    move-object/from16 v6, v18

    goto :goto_20

    .end local v27    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v33    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v6    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_2b
    move-object/from16 v27, v3

    move-object/from16 v33, v6

    .line 488
    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v6    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v27    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v33    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_1f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v6, v18

    .end local v18    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v6, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 489
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3, v5}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 491
    :goto_20
    nop

    .line 486
    .end local v6    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 491
    nop

    .line 476
    .end local v5    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v17    # "$i$f$set-impl":I
    nop

    .line 485
    .end local v4    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 492
    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v3

    shr-int/lit8 v4, v1, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, p6

    .end local p6    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v5, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v5, v3, v8, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const v3, 0x7ab4aae9

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 494
    shr-int/lit8 v3, v1, 0x9

    and-int/lit8 v3, v3, 0xe

    .local v3, "$changed$iv":I
    move-object v4, v8

    .local v4, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 495
    .local v6, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move/from16 p6, v0

    .end local v0    # "compositeKeyHash$iv$iv":I
    .local p6, "compositeKeyHash$iv$iv":I
    const v0, -0x4ab8dd4f

    move/from16 v34, v1

    .end local v1    # "$changed$iv$iv$iv":I
    .local v34, "$changed$iv$iv$iv":I
    const-string v1, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v1, v2, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    move-object/from16 v36, v12

    .end local v12    # "forceAnimationCheck$delegate":Landroidx/compose/runtime/MutableState;
    .local v0, "$this$Switch_u24lambda_u2412":Landroidx/compose/foundation/layout/BoxScope;
    .local v36, "forceAnimationCheck$delegate":Landroidx/compose/runtime/MutableState;
    move-object v12, v0

    .end local v0    # "$this$Switch_u24lambda_u2412":Landroidx/compose/foundation/layout/BoxScope;
    .local v12, "$this$Switch_u24lambda_u2412":Landroidx/compose/foundation/layout/BoxScope;
    move-object v0, v4

    .local v0, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v37, 0x0

    .line 175
    .local v37, "$i$a$-Box-SwitchKt$Switch$4":I
    move/from16 v38, v2

    .end local v2    # "$changed$iv":I
    .local v38, "$changed$iv":I
    const v2, -0x4946344c

    move/from16 v39, v3

    .end local v3    # "$changed$iv":I
    .local v39, "$changed$iv":I
    const-string v3, "C174@7661L258:Switch.kt#jmzs0o"

    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 176
    invoke-virtual {v11}, Landroidx/compose/material/AnchoredDraggableState;->getTargetValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 177
    nop

    .line 178
    const v3, -0x625d78ca

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 179
    nop

    .local v3, "invalid$iv":Z
    move-object/from16 v16, v0

    .local v16, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 496
    .local v17, "$i$f$cache":I
    move-object/from16 v40, v5

    .end local v5    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v40, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 497
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_2d

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v41, v3

    .end local v3    # "invalid$iv":Z
    .local v41, "invalid$iv":Z
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v5, v3, :cond_2c

    goto :goto_21

    .line 501
    :cond_2c
    move-object v3, v5

    move-object/from16 v19, v3

    move-object/from16 v5, v16

    goto :goto_22

    .line 497
    .end local v41    # "invalid$iv":Z
    .restart local v3    # "invalid$iv":Z
    :cond_2d
    move/from16 v41, v3

    .line 498
    .end local v3    # "invalid$iv":Z
    .restart local v41    # "invalid$iv":Z
    :goto_21
    const/4 v3, 0x0

    .line 179
    .local v3, "$i$a$-cache-SwitchKt$Switch$4$1":I
    move/from16 v19, v3

    .end local v3    # "$i$a$-cache-SwitchKt$Switch$4$1":I
    .local v19, "$i$a$-cache-SwitchKt$Switch$4$1":I
    new-instance v3, Landroidx/compose/material/SwitchKt$Switch$4$1$1;

    invoke-direct {v3, v11}, Landroidx/compose/material/SwitchKt$Switch$4$1$1;-><init>(Landroidx/compose/material/AnchoredDraggableState;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 498
    .end local v19    # "$i$a$-cache-SwitchKt$Switch$4$1":I
    nop

    .line 499
    .local v3, "value$iv":Ljava/lang/Object;
    move-object/from16 v19, v5

    move-object/from16 v5, v16

    .end local v16    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v19, "it$iv":Ljava/lang/Object;
    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 500
    nop

    .line 497
    .end local v3    # "value$iv":Ljava/lang/Object;
    :goto_22
    nop

    .line 496
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v19    # "it$iv":Ljava/lang/Object;
    nop

    .line 179
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache":I
    .end local v41    # "invalid$iv":Z
    move-object/from16 v16, v3

    check-cast v16, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 180
    move-object/from16 v17, v28

    check-cast v17, Landroidx/compose/foundation/interaction/InteractionSource;

    and-int/lit8 v3, v1, 0xe

    shr-int/lit8 v5, v15, 0x3

    and-int/lit16 v5, v5, 0x380

    or-int/2addr v3, v5

    shr-int/lit8 v5, v15, 0x6

    and-int/lit16 v5, v5, 0x1c00

    or-int/2addr v3, v5

    shl-int/lit8 v5, v15, 0x3

    and-int v5, v5, v35

    or-int v19, v3, v5

    .line 175
    move v3, v13

    .end local v13    # "maxBound":F
    .local v3, "maxBound":F
    move v13, v2

    move v2, v14

    .end local v14    # "minBound":F
    .local v2, "minBound":F
    move/from16 v14, v20

    move v5, v15

    .end local v15    # "$dirty":I
    .local v5, "$dirty":I
    move-object/from16 v15, v29

    move-object/from16 v18, v0

    invoke-static/range {v12 .. v19}, Landroidx/compose/material/SwitchKt;->SwitchImpl(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material/SwitchColors;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 182
    nop

    .line 495
    .end local v0    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v1    # "$changed":I
    .end local v12    # "$this$Switch_u24lambda_u2412":Landroidx/compose/foundation/layout/BoxScope;
    .end local v37    # "$i$a$-Box-SwitchKt$Switch$4":I
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 494
    .end local v4    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v39    # "$changed$iv":I
    nop

    .line 502
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 503
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 504
    nop

    .end local v23    # "$i$f$ReusableComposeNode":I
    .end local v26    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v34    # "$changed$iv$iv$iv":I
    .end local v40    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 505
    nop

    .end local v21    # "$changed$iv$iv":I
    .end local v22    # "$i$f$Layout":I
    .end local v27    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local p6    # "compositeKeyHash$iv$iv":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 506
    nop

    .end local v24    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v33    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v38    # "$changed$iv":I
    .end local p3    # "$i$f$Box":I
    .end local p4    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local p5    # "propagateMinConstraints$iv":Z
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 183
    .end local v2    # "minBound":F
    .end local v3    # "maxBound":F
    .end local v11    # "anchoredDraggableState":Landroidx/compose/material/AnchoredDraggableState;
    .end local v25    # "isRtl":Z
    .end local v30    # "currentChecked$delegate":Landroidx/compose/runtime/State;
    .end local v31    # "currentOnCheckedChange$delegate":Landroidx/compose/runtime/State;
    .end local v32    # "switchVelocityThresholdPx":F
    .end local v36    # "forceAnimationCheck$delegate":Landroidx/compose/runtime/MutableState;
    .end local p2    # "toggleableModifier":Landroidx/compose/ui/Modifier;
    :cond_2e
    move v13, v5

    move-object v11, v7

    move-object/from16 v12, v28

    .end local v5    # "$dirty":I
    .end local v7    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v28    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v11, "modifier":Landroidx/compose/ui/Modifier;
    .local v12, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v13, "$dirty":I
    :goto_23
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_2f

    new-instance v15, Landroidx/compose/material/SwitchKt$Switch$5;

    move-object v0, v15

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move/from16 v4, v20

    move-object v5, v12

    move-object/from16 v6, v29

    move/from16 v7, p7

    move-object/from16 v16, v8

    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v16, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/SwitchKt$Switch$5;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SwitchColors;II)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-interface {v14, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_24

    .end local v16    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v8    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2f
    move-object/from16 v16, v8

    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v16    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_24
    return-void
.end method

.method private static final Switch$lambda$3(Landroidx/compose/runtime/MutableState;)Z
    .locals 4
    .param p0, "$forceAnimationCheck$delegate"    # Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 108
    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 535
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 108
    return v0
.end method

.method private static final Switch$lambda$4(Landroidx/compose/runtime/MutableState;Z)V
    .locals 5
    .param p0, "$forceAnimationCheck$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v4, 0x0

    .line 536
    .local v4, "$i$f$setValue":I
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 537
    nop

    .line 108
    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private static final Switch$lambda$7(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;
    .locals 4
    .param p0, "$currentOnCheckedChange$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 538
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 122
    return-object v0
.end method

.method private static final Switch$lambda$8(Landroidx/compose/runtime/State;)Z
    .locals 4
    .param p0, "$currentChecked$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 539
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

    .line 123
    return v0
.end method

.method private static final SwitchImpl(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material/SwitchColors;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)V
    .locals 39
    .param p0, "$this$SwitchImpl"    # Landroidx/compose/foundation/layout/BoxScope;
    .param p1, "checked"    # Z
    .param p2, "enabled"    # Z
    .param p3, "colors"    # Landroidx/compose/material/SwitchColors;
    .param p4, "thumbValue"    # Lkotlin/jvm/functions/Function0;
    .param p5, "interactionSource"    # Landroidx/compose/foundation/interaction/InteractionSource;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "ZZ",
            "Landroidx/compose/material/SwitchColors;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 220
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p7

    const v0, 0x439fbf2

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(SwitchImpl)P(!1,2!1,4)220@9007L46,222@9059L648,241@9910L28,242@9943L171,248@10144L28,249@10222L7,*250@10281L7,252@10392L6,251@10331L228,264@10804L59,258@10564L475:Switch.kt#jmzs0o"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p7

    .local v1, "$dirty":I
    and-int/lit8 v2, v14, 0xe

    if-nez v2, :cond_1

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v14, 0x70

    if-nez v2, :cond_3

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v14, 0x380

    if-nez v2, :cond_5

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_2

    :cond_4
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v14, 0x1c00

    if-nez v2, :cond_7

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_3

    :cond_6
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v1, v2

    :cond_7
    const v2, 0xe000

    and-int/2addr v2, v14

    if-nez v2, :cond_9

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x4000

    goto :goto_4

    :cond_8
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v1, v2

    :cond_9
    const/high16 v2, 0x70000

    and-int/2addr v2, v14

    if-nez v2, :cond_b

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/high16 v2, 0x20000

    goto :goto_5

    :cond_a
    const/high16 v2, 0x10000

    :goto_5
    or-int/2addr v1, v2

    :cond_b
    move v15, v1

    .end local v1    # "$dirty":I
    .local v15, "$dirty":I
    const v1, 0x5b6db

    and-int/2addr v1, v15

    const v2, 0x12492

    if-ne v1, v2, :cond_d

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_6

    .line 271
    :cond_c
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v38, v15

    goto/16 :goto_10

    .line 220
    :cond_d
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material.SwitchImpl (Switch.kt:219)"

    invoke-static {v0, v15, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 221
    :cond_e
    const/4 v0, 0x0

    move v1, v0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$remember":I
    const v3, -0x1d58f75c

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v7, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 507
    const/4 v3, 0x0

    .local v3, "invalid$iv$iv":Z
    move-object v4, v7

    .local v4, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 508
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 509
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v6, v0, :cond_f

    .line 510
    const/4 v0, 0x0

    .line 221
    .local v0, "$i$a$-remember-SwitchKt$SwitchImpl$interactions$1":I
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateListOf()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v0

    .line 510
    .end local v0    # "$i$a$-remember-SwitchKt$SwitchImpl$interactions$1":I
    nop

    .line 511
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 512
    nop

    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_7

    .line 513
    :cond_f
    move-object v0, v6

    .line 509
    :goto_7
    nop

    .line 508
    .end local v6    # "it$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 507
    .end local v3    # "invalid$iv$iv":Z
    .end local v4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 221
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$remember":I
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 223
    .local v0, "interactions":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const v1, -0x625d73cd

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .local v1, "invalid$iv":Z
    move-object v2, v7

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 514
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 515
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_11

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_10

    goto :goto_8

    .line 519
    :cond_10
    move/from16 v16, v1

    move/from16 v18, v3

    move-object v1, v4

    goto :goto_9

    .line 516
    :cond_11
    :goto_8
    const/4 v6, 0x0

    .line 223
    .local v6, "$i$a$-cache-SwitchKt$SwitchImpl$1":I
    move/from16 v16, v1

    .end local v1    # "invalid$iv":Z
    .local v16, "invalid$iv":Z
    new-instance v1, Landroidx/compose/material/SwitchKt$SwitchImpl$1$1;

    move/from16 v18, v3

    const/4 v3, 0x0

    .end local v3    # "$i$f$cache":I
    .local v18, "$i$f$cache":I
    invoke-direct {v1, v13, v0, v3}, Landroidx/compose/material/SwitchKt$SwitchImpl$1$1;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 516
    .end local v6    # "$i$a$-cache-SwitchKt$SwitchImpl$1":I
    nop

    .line 517
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 518
    nop

    .line 515
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_9
    nop

    .line 514
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 223
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "invalid$iv":Z
    .end local v18    # "$i$f$cache":I
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    shr-int/lit8 v2, v15, 0xf

    and-int/lit8 v2, v2, 0xe

    or-int/lit8 v2, v2, 0x40

    invoke-static {v13, v1, v7, v2}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 236
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    move/from16 v23, v1

    .line 237
    .local v23, "hasInteraction":Z
    if-eqz v23, :cond_12

    .line 238
    sget v1, Landroidx/compose/material/SwitchKt;->ThumbPressedElevation:F

    goto :goto_a

    .line 240
    :cond_12
    sget v1, Landroidx/compose/material/SwitchKt;->ThumbDefaultElevation:F

    .line 237
    :goto_a
    move/from16 v34, v1

    .line 242
    .local v34, "elevation":F
    shr-int/lit8 v1, v15, 0x6

    and-int/lit8 v1, v1, 0xe

    and-int/lit8 v3, v15, 0x70

    or-int/2addr v1, v3

    shr-int/lit8 v3, v15, 0x3

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v1, v3

    invoke-interface {v11, v10, v9, v7, v1}, Landroidx/compose/material/SwitchColors;->trackColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v6

    .line 245
    .local v6, "trackColor$delegate":Landroidx/compose/runtime/State;
    nop

    .line 244
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 245
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v3

    invoke-interface {v8, v1, v3}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 246
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v2, -0x625d7021

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "invalid$iv":Z
    move-object v3, v7

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 520
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 521
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_14

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v35, v0

    .end local v0    # "interactions":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .local v35, "interactions":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v5, v0, :cond_13

    goto :goto_b

    .line 525
    :cond_13
    move-object v0, v5

    goto :goto_c

    .line 521
    .end local v35    # "interactions":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v0    # "interactions":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :cond_14
    move-object/from16 v35, v0

    .line 522
    .end local v0    # "interactions":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v35    # "interactions":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :goto_b
    const/4 v0, 0x0

    .line 246
    .local v0, "$i$a$-cache-SwitchKt$SwitchImpl$2":I
    move/from16 v17, v0

    .end local v0    # "$i$a$-cache-SwitchKt$SwitchImpl$2":I
    .local v17, "$i$a$-cache-SwitchKt$SwitchImpl$2":I
    new-instance v0, Landroidx/compose/material/SwitchKt$SwitchImpl$2$1;

    invoke-direct {v0, v6}, Landroidx/compose/material/SwitchKt$SwitchImpl$2$1;-><init>(Landroidx/compose/runtime/State;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 522
    .end local v17    # "$i$a$-cache-SwitchKt$SwitchImpl$2":I
    nop

    .line 523
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 524
    nop

    .line 521
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_c
    nop

    .line 520
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 246
    .end local v2    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 243
    const/4 v2, 0x0

    invoke-static {v1, v0, v7, v2}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 249
    shr-int/lit8 v0, v15, 0x6

    and-int/lit8 v0, v0, 0xe

    and-int/lit8 v1, v15, 0x70

    or-int/2addr v0, v1

    shr-int/lit8 v1, v15, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v0, v1

    invoke-interface {v11, v10, v9, v7, v0}, Landroidx/compose/material/SwitchColors;->thumbColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 250
    .local v0, "thumbColor$delegate":Landroidx/compose/runtime/State;
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalElevationOverlay()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    .local v1, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v2, 0x6

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .line 526
    .local v3, "$i$f$getCurrent":I
    const v4, 0x789c5f52

    const-string v5, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v7, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v16

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 250
    .end local v1    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v2    # "$changed$iv":I
    .end local v3    # "$i$f$getCurrent":I
    move-object/from16 v36, v16

    check-cast v36, Landroidx/compose/material/ElevationOverlay;

    .line 251
    .local v36, "elevationOverlay":Landroidx/compose/material/ElevationOverlay;
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    .restart local v1    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v2, 0x6

    .restart local v2    # "$changed$iv":I
    const/4 v3, 0x0

    .line 527
    .restart local v3    # "$i$f$getCurrent":I
    invoke-static {v7, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v1    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v2    # "$changed$iv":I
    .end local v3    # "$i$f$getCurrent":I
    check-cast v4, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v4}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v1

    .line 251
    nop

    .local v1, "arg0$iv":F
    const/4 v2, 0x0

    .line 528
    .local v2, "$i$f$plus-5rwHm24":I
    add-float v3, v1, v34

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 251
    .end local v1    # "arg0$iv":F
    .end local v2    # "$i$f$plus-5rwHm24":I
    nop

    .local v4, "absoluteElevation":F
    const v1, -0x20243422

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "253@10467L36"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 253
    invoke-static {v0}, Landroidx/compose/material/SwitchKt;->SwitchImpl$lambda$17(Landroidx/compose/runtime/State;)J

    move-result-wide v1

    sget-object v3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v5, 0x6

    invoke-virtual {v3, v7, v5}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v3

    move-object/from16 v16, v6

    .end local v6    # "trackColor$delegate":Landroidx/compose/runtime/State;
    .local v16, "trackColor$delegate":Landroidx/compose/runtime/State;
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_15

    if-eqz v36, :cond_15

    .line 254
    invoke-static {v0}, Landroidx/compose/material/SwitchKt;->SwitchImpl$lambda$17(Landroidx/compose/runtime/State;)J

    move-result-wide v2

    const/4 v6, 0x0

    move-object/from16 v1, v36

    move-object v5, v7

    move-object/from16 v37, v16

    .end local v16    # "trackColor$delegate":Landroidx/compose/runtime/State;
    .local v37, "trackColor$delegate":Landroidx/compose/runtime/State;
    invoke-interface/range {v1 .. v6}, Landroidx/compose/material/ElevationOverlay;->apply-7g2Lkgo(JFLandroidx/compose/runtime/Composer;I)J

    move-result-wide v1

    goto :goto_d

    .line 253
    .end local v37    # "trackColor$delegate":Landroidx/compose/runtime/State;
    .restart local v16    # "trackColor$delegate":Landroidx/compose/runtime/State;
    :cond_15
    move-object/from16 v37, v16

    .line 256
    .end local v16    # "trackColor$delegate":Landroidx/compose/runtime/State;
    .restart local v37    # "trackColor$delegate":Landroidx/compose/runtime/State;
    invoke-static {v0}, Landroidx/compose/material/SwitchKt;->SwitchImpl$lambda$17(Landroidx/compose/runtime/State;)J

    move-result-wide v1

    .line 253
    :goto_d
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xe

    .line 252
    move/from16 v38, v15

    .end local v15    # "$dirty":I
    .local v38, "$dirty":I
    move-wide v15, v1

    move-object/from16 v20, v7

    invoke-static/range {v15 .. v22}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v1

    .line 261
    .local v1, "resolvedThumbColor$delegate":Landroidx/compose/runtime/State;
    nop

    .line 260
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .line 261
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getCenterStart()Landroidx/compose/ui/Alignment;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v3, -0x625d6db7

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    .line 262
    nop

    .local v3, "invalid$iv":Z
    move-object v5, v7

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 529
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 530
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_17

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v22, v0

    .end local v0    # "thumbColor$delegate":Landroidx/compose/runtime/State;
    .local v22, "thumbColor$delegate":Landroidx/compose/runtime/State;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v15, v0, :cond_16

    goto :goto_e

    .line 534
    :cond_16
    move-object v0, v15

    goto :goto_f

    .line 530
    .end local v22    # "thumbColor$delegate":Landroidx/compose/runtime/State;
    .restart local v0    # "thumbColor$delegate":Landroidx/compose/runtime/State;
    :cond_17
    move-object/from16 v22, v0

    .line 531
    .end local v0    # "thumbColor$delegate":Landroidx/compose/runtime/State;
    .restart local v22    # "thumbColor$delegate":Landroidx/compose/runtime/State;
    :goto_e
    const/4 v0, 0x0

    .line 262
    .local v0, "$i$a$-cache-SwitchKt$SwitchImpl$3":I
    move/from16 v17, v0

    .end local v0    # "$i$a$-cache-SwitchKt$SwitchImpl$3":I
    .local v17, "$i$a$-cache-SwitchKt$SwitchImpl$3":I
    new-instance v0, Landroidx/compose/material/SwitchKt$SwitchImpl$3$1;

    invoke-direct {v0, v12}, Landroidx/compose/material/SwitchKt$SwitchImpl$3$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 531
    .end local v17    # "$i$a$-cache-SwitchKt$SwitchImpl$3":I
    nop

    .line 532
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 533
    nop

    .line 530
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_f
    nop

    .line 529
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 262
    .end local v3    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/OffsetKt;->offset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 264
    nop

    .line 265
    const/4 v15, 0x0

    sget v16, Landroidx/compose/material/SwitchKt;->ThumbRippleRadius:F

    const-wide/16 v17, 0x0

    const/16 v20, 0x36

    const/16 v21, 0x4

    move-object/from16 v19, v7

    invoke-static/range {v15 .. v21}, Landroidx/compose/material/ripple/RippleKt;->rememberRipple-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    move-result-object v2

    .line 263
    invoke-static {v0, v13, v2}, Landroidx/compose/foundation/IndicationKt;->indication(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/Indication;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 267
    sget v2, Landroidx/compose/material/SwitchKt;->ThumbDiameter:F

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v24

    .line 268
    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->getCircleShape()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroidx/compose/ui/graphics/Shape;

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x18

    const/16 v33, 0x0

    move/from16 v25, v34

    invoke-static/range {v24 .. v33}, Landroidx/compose/ui/draw/ShadowKt;->shadow-s4CzXII$default(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 269
    invoke-static {v1}, Landroidx/compose/material/SwitchKt;->SwitchImpl$lambda$18(Landroidx/compose/runtime/State;)J

    move-result-wide v2

    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->getCircleShape()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/graphics/Shape;

    invoke-static {v0, v2, v3, v5}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 259
    const/4 v2, 0x0

    invoke-static {v0, v7, v2}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 271
    .end local v1    # "resolvedThumbColor$delegate":Landroidx/compose/runtime/State;
    .end local v4    # "absoluteElevation":F
    .end local v22    # "thumbColor$delegate":Landroidx/compose/runtime/State;
    .end local v23    # "hasInteraction":Z
    .end local v34    # "elevation":F
    .end local v35    # "interactions":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v36    # "elevationOverlay":Landroidx/compose/material/ElevationOverlay;
    .end local v37    # "trackColor$delegate":Landroidx/compose/runtime/State;
    :cond_18
    :goto_10
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_19

    new-instance v16, Landroidx/compose/material/SwitchKt$SwitchImpl$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v17, v7

    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/SwitchKt$SwitchImpl$4;-><init>(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material/SwitchColors;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/InteractionSource;I)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_11

    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v7    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_19
    move-object/from16 v17, v7

    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v17    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_11
    return-void
.end method

.method private static final SwitchImpl$lambda$15(Landroidx/compose/runtime/State;)J
    .locals 4
    .param p0, "$trackColor$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
        }
    .end annotation

    .line 242
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 540
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    .line 242
    return-wide v0
.end method

.method private static final SwitchImpl$lambda$17(Landroidx/compose/runtime/State;)J
    .locals 4
    .param p0, "$thumbColor$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
        }
    .end annotation

    .line 249
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 541
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    .line 249
    return-wide v0
.end method

.method private static final SwitchImpl$lambda$18(Landroidx/compose/runtime/State;)J
    .locals 4
    .param p0, "$resolvedThumbColor$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
        }
    .end annotation

    .line 252
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 542
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    .line 252
    return-wide v0
.end method

.method public static final synthetic access$Switch$lambda$3(Landroidx/compose/runtime/MutableState;)Z
    .locals 1
    .param p0, "$forceAnimationCheck$delegate"    # Landroidx/compose/runtime/MutableState;

    .line 1
    invoke-static {p0}, Landroidx/compose/material/SwitchKt;->Switch$lambda$3(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$Switch$lambda$4(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0
    .param p0, "$forceAnimationCheck$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "value"    # Z

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material/SwitchKt;->Switch$lambda$4(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method

.method public static final synthetic access$Switch$lambda$7(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$currentOnCheckedChange$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/compose/material/SwitchKt;->Switch$lambda$7(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$Switch$lambda$8(Landroidx/compose/runtime/State;)Z
    .locals 1
    .param p0, "$currentChecked$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/compose/material/SwitchKt;->Switch$lambda$8(Landroidx/compose/runtime/State;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$SwitchImpl(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material/SwitchColors;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/foundation/layout/BoxScope;
    .param p1, "checked"    # Z
    .param p2, "enabled"    # Z
    .param p3, "colors"    # Landroidx/compose/material/SwitchColors;
    .param p4, "thumbValue"    # Lkotlin/jvm/functions/Function0;
    .param p5, "interactionSource"    # Landroidx/compose/foundation/interaction/InteractionSource;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p7}, Landroidx/compose/material/SwitchKt;->SwitchImpl(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material/SwitchColors;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$SwitchImpl$lambda$15(Landroidx/compose/runtime/State;)J
    .locals 2
    .param p0, "$trackColor$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/compose/material/SwitchKt;->SwitchImpl$lambda$15(Landroidx/compose/runtime/State;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$drawTrack-RPmYEkk(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFF)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "trackColor"    # J
    .param p3, "trackWidth"    # F
    .param p4, "strokeWidth"    # F

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SwitchKt;->drawTrack-RPmYEkk(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFF)V

    return-void
.end method

.method public static final synthetic access$getAnimationSpec$p()Landroidx/compose/animation/core/TweenSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/SwitchKt;->AnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    return-object v0
.end method

.method private static final drawTrack-RPmYEkk(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFF)V
    .locals 16
    .param p0, "$this$drawTrack_u2dRPmYEkk"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p1, "trackColor"    # J
    .param p3, "trackWidth"    # F
    .param p4, "strokeWidth"    # F

    .line 274
    const/4 v0, 0x2

    int-to-float v0, v0

    div-float v0, p4, v0

    .line 275
    .local v0, "strokeRadius":F
    nop

    .line 276
    nop

    .line 277
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    .line 278
    sub-float v1, p3, v0

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v6

    .line 279
    nop

    .line 280
    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    move-result v9

    .line 275
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1e0

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v8, p4

    invoke-static/range {v1 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 282
    return-void
.end method

.method public static final getThumbDiameter()F
    .locals 1

    .line 286
    sget v0, Landroidx/compose/material/SwitchKt;->ThumbDiameter:F

    return v0
.end method

.method public static final getTrackStrokeWidth()F
    .locals 1

    .line 285
    sget v0, Landroidx/compose/material/SwitchKt;->TrackStrokeWidth:F

    return v0
.end method

.method public static final getTrackWidth()F
    .locals 1

    .line 284
    sget v0, Landroidx/compose/material/SwitchKt;->TrackWidth:F

    return v0
.end method
