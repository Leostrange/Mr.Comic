.class public final Landroidx/compose/material3/TextFieldImplKt;
.super Ljava/lang/Object;
.source "TextFieldImpl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldImpl.kt\nandroidx/compose/material3/TextFieldImplKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,433:1\n1116#2,6:434\n658#3:440\n646#3:441\n658#3:442\n646#3:443\n154#4:444\n154#4:445\n154#4:446\n154#4:447\n154#4:448\n154#4:449\n154#4:450\n154#4:451\n*S KotlinDebug\n*F\n+ 1 TextFieldImpl.kt\nandroidx/compose/material3/TextFieldImplKt\n*L\n81#1:434,6\n106#1:440\n106#1:441\n109#1:442\n109#1:443\n424#1:444\n425#1:445\n426#1:446\n427#1:447\n428#1:448\n429#1:449\n430#1:450\n432#1:451\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u00a0\u0002\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u00032\u0011\u00102\u001a\r\u0012\u0004\u0012\u00020.03\u00a2\u0006\u0002\u000842\u0006\u00105\u001a\u0002062\u0013\u00107\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103\u00a2\u0006\u0002\u000842\u0015\u0008\u0002\u00108\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103\u00a2\u0006\u0002\u000842\u0015\u0008\u0002\u00109\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103\u00a2\u0006\u0002\u000842\u0015\u0008\u0002\u0010:\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103\u00a2\u0006\u0002\u000842\u0015\u0008\u0002\u0010;\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103\u00a2\u0006\u0002\u000842\u0015\u0008\u0002\u0010<\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103\u00a2\u0006\u0002\u000842\u0015\u0008\u0002\u0010=\u001a\u000f\u0012\u0004\u0012\u00020.\u0018\u000103\u00a2\u0006\u0002\u000842\u0008\u0008\u0002\u0010>\u001a\u00020?2\u0008\u0008\u0002\u0010@\u001a\u00020?2\u0008\u0008\u0002\u0010A\u001a\u00020?2\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020G2\u0011\u0010H\u001a\r\u0012\u0004\u0012\u00020.03\u00a2\u0006\u0002\u00084H\u0001\u00a2\u0006\u0002\u0010I\u001a9\u0010J\u001a\u00020.2\u0006\u0010K\u001a\u00020L2\n\u0008\u0002\u0010M\u001a\u0004\u0018\u00010N2\u0011\u0010O\u001a\r\u0012\u0004\u0012\u00020.03\u00a2\u0006\u0002\u00084H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008P\u0010Q\u001a\u0012\u0010R\u001a\u00020\u00012\u0008\u0010S\u001a\u0004\u0018\u00010TH\u0000\u001a\u0012\u0010U\u001a\u00020\u00012\u0008\u0010S\u001a\u0004\u0018\u00010TH\u0000\u001a\u001c\u0010V\u001a\u00020\n*\u00020\n2\u0006\u0010A\u001a\u00020?2\u0006\u0010W\u001a\u00020\u0003H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007\"\u0014\u0010\t\u001a\u00020\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u000e\u0010\r\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u000f\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0010\u0010\u0007\"\u0016\u0010\u0011\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0012\u0010\u0007\"\u0016\u0010\u0013\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0014\u0010\u0007\"\u000e\u0010\u0015\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0017\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0018\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0019\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u001a\u0010\u0007\"\u000e\u0010\u001b\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001c\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u001d\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u001e\u0010\u0007\"\u000e\u0010\u001f\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010 \u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008!\u0010\u0007\"\u000e\u0010\"\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010#\u001a\u00020$X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\'\u001a\u0004\u0008%\u0010&\"\u001a\u0010(\u001a\u0004\u0018\u00010)*\u00020*8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006X"
    }
    d2 = {
        "AnimationDuration",
        "",
        "ContainerId",
        "",
        "HorizontalIconPadding",
        "Landroidx/compose/ui/unit/Dp;",
        "getHorizontalIconPadding",
        "()F",
        "F",
        "IconDefaultSizeModifier",
        "Landroidx/compose/ui/Modifier;",
        "getIconDefaultSizeModifier",
        "()Landroidx/compose/ui/Modifier;",
        "LabelId",
        "LeadingId",
        "MinFocusedLabelLineHeight",
        "getMinFocusedLabelLineHeight",
        "MinSupportingTextLineHeight",
        "getMinSupportingTextLineHeight",
        "MinTextLineHeight",
        "getMinTextLineHeight",
        "PlaceholderAnimationDelayOrDuration",
        "PlaceholderAnimationDuration",
        "PlaceholderId",
        "PrefixId",
        "PrefixSuffixTextPadding",
        "getPrefixSuffixTextPadding",
        "SuffixId",
        "SupportingId",
        "SupportingTopPadding",
        "getSupportingTopPadding",
        "TextFieldId",
        "TextFieldPadding",
        "getTextFieldPadding",
        "TrailingId",
        "ZeroConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "getZeroConstraints",
        "()J",
        "J",
        "layoutId",
        "",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "getLayoutId",
        "(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;",
        "CommonDecorationBox",
        "",
        "type",
        "Landroidx/compose/material3/TextFieldType;",
        "value",
        "innerTextField",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "visualTransformation",
        "Landroidx/compose/ui/text/input/VisualTransformation;",
        "label",
        "placeholder",
        "leadingIcon",
        "trailingIcon",
        "prefix",
        "suffix",
        "supportingText",
        "singleLine",
        "",
        "enabled",
        "isError",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/InteractionSource;",
        "contentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "colors",
        "Landroidx/compose/material3/TextFieldColors;",
        "container",
        "(Landroidx/compose/material3/TextFieldType;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V",
        "Decoration",
        "contentColor",
        "Landroidx/compose/ui/graphics/Color;",
        "typography",
        "Landroidx/compose/ui/text/TextStyle;",
        "content",
        "Decoration-KTwxG1Y",
        "(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "heightOrZero",
        "placeable",
        "Landroidx/compose/ui/layout/Placeable;",
        "widthOrZero",
        "defaultErrorSemantics",
        "defaultErrorMessage",
        "material3_release"
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
.field public static final AnimationDuration:I = 0x96

.field public static final ContainerId:Ljava/lang/String; = "Container"

.field private static final HorizontalIconPadding:F

.field private static final IconDefaultSizeModifier:Landroidx/compose/ui/Modifier;

.field public static final LabelId:Ljava/lang/String; = "Label"

.field public static final LeadingId:Ljava/lang/String; = "Leading"

.field private static final MinFocusedLabelLineHeight:F

.field private static final MinSupportingTextLineHeight:F

.field private static final MinTextLineHeight:F

.field private static final PlaceholderAnimationDelayOrDuration:I = 0x43

.field private static final PlaceholderAnimationDuration:I = 0x53

.field public static final PlaceholderId:Ljava/lang/String; = "Hint"

.field public static final PrefixId:Ljava/lang/String; = "Prefix"

.field private static final PrefixSuffixTextPadding:F

.field public static final SuffixId:Ljava/lang/String; = "Suffix"

.field public static final SupportingId:Ljava/lang/String; = "Supporting"

.field private static final SupportingTopPadding:F

.field public static final TextFieldId:Ljava/lang/String; = "TextField"

.field private static final TextFieldPadding:F

.field public static final TrailingId:Ljava/lang/String; = "Trailing"

.field private static final ZeroConstraints:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 418
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/material3/TextFieldImplKt;->ZeroConstraints:J

    .line 424
    const/16 v0, 0x10

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 444
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 424
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TextFieldImplKt;->TextFieldPadding:F

    .line 425
    const/16 v0, 0xc

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 445
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 425
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TextFieldImplKt;->HorizontalIconPadding:F

    .line 426
    const/4 v0, 0x4

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 446
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 426
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TextFieldImplKt;->SupportingTopPadding:F

    .line 427
    const/4 v0, 0x2

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 447
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 427
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TextFieldImplKt;->PrefixSuffixTextPadding:F

    .line 428
    const/16 v0, 0x18

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 448
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 428
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TextFieldImplKt;->MinTextLineHeight:F

    .line 429
    const/16 v0, 0x10

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 449
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 429
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TextFieldImplKt;->MinFocusedLabelLineHeight:F

    .line 430
    const/16 v0, 0x10

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 450
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 430
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/TextFieldImplKt;->MinSupportingTextLineHeight:F

    .line 432
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v1, 0x30

    .local v1, "$this$dp$iv":I
    const/4 v2, 0x0

    .line 451
    .local v2, "$i$f$getDp":I
    int-to-float v3, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 432
    .end local v1    # "$this$dp$iv":I
    .end local v2    # "$i$f$getDp":I
    const/16 v2, 0x30

    .local v2, "$this$dp$iv":I
    const/4 v3, 0x0

    .line 451
    .local v3, "$i$f$getDp":I
    int-to-float v4, v2

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 432
    .end local v2    # "$this$dp$iv":I
    .end local v3    # "$i$f$getDp":I
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/TextFieldImplKt;->IconDefaultSizeModifier:Landroidx/compose/ui/Modifier;

    return-void
.end method

.method public static final CommonDecorationBox(Landroidx/compose/material3/TextFieldType;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 45
    .param p0, "type"    # Landroidx/compose/material3/TextFieldType;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "innerTextField"    # Lkotlin/jvm/functions/Function2;
    .param p3, "visualTransformation"    # Landroidx/compose/ui/text/input/VisualTransformation;
    .param p4, "label"    # Lkotlin/jvm/functions/Function2;
    .param p5, "placeholder"    # Lkotlin/jvm/functions/Function2;
    .param p6, "leadingIcon"    # Lkotlin/jvm/functions/Function2;
    .param p7, "trailingIcon"    # Lkotlin/jvm/functions/Function2;
    .param p8, "prefix"    # Lkotlin/jvm/functions/Function2;
    .param p9, "suffix"    # Lkotlin/jvm/functions/Function2;
    .param p10, "supportingText"    # Lkotlin/jvm/functions/Function2;
    .param p11, "singleLine"    # Z
    .param p12, "enabled"    # Z
    .param p13, "isError"    # Z
    .param p14, "interactionSource"    # Landroidx/compose/foundation/interaction/InteractionSource;
    .param p15, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p16, "colors"    # Landroidx/compose/material3/TextFieldColors;
    .param p17, "container"    # Lkotlin/jvm/functions/Function2;
    .param p18, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p19, "$changed"    # I
    .param p20, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/TextFieldType;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;ZZZ",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/material3/TextFieldColors;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 80
    move-object/from16 v15, p3

    move-object/from16 v14, p4

    move-object/from16 v13, p14

    move-object/from16 v12, p16

    move/from16 v11, p19

    move/from16 v10, p20

    move/from16 v9, p21

    const v0, -0x38729d6c

    move-object/from16 v1, p18

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .end local p18    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    const-string v0, "C(CommonDecorationBox)P(15,16,4,17,7,9,8,14,10,12,13,11,3,6,5,2)80@3145L105,84@3300L25,95@3684L10,102@4027L6900:TextFieldImpl.kt#uh7d8r"

    invoke-static {v8, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v0, p19

    .local v0, "$dirty":I
    move/from16 v1, p20

    .local v1, "$dirty1":I
    and-int/lit8 v2, v9, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x6

    move-object/from16 v7, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v11, 0x6

    if-nez v2, :cond_2

    move-object/from16 v7, p0

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v0, v2

    goto :goto_1

    :cond_2
    move-object/from16 v7, p0

    :goto_1
    and-int/lit8 v2, v9, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x30

    move-object/from16 v2, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v11, 0x30

    if-nez v2, :cond_5

    move-object/from16 v2, p1

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/16 v16, 0x20

    goto :goto_2

    :cond_4
    const/16 v16, 0x10

    :goto_2
    or-int v0, v0, v16

    goto :goto_3

    :cond_5
    move-object/from16 v2, p1

    :goto_3
    and-int/lit8 v16, v9, 0x4

    const/16 v17, 0x100

    const/16 v18, 0x80

    if-eqz v16, :cond_6

    or-int/lit16 v0, v0, 0x180

    move-object/from16 v3, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v11, 0x180

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    move/from16 v16, v17

    goto :goto_4

    :cond_7
    move/from16 v16, v18

    :goto_4
    or-int v0, v0, v16

    goto :goto_5

    :cond_8
    move-object/from16 v3, p2

    :goto_5
    and-int/lit8 v16, v9, 0x8

    const/16 v19, 0x400

    if-eqz v16, :cond_9

    or-int/lit16 v0, v0, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v5, v11, 0xc00

    if-nez v5, :cond_b

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x800

    goto :goto_6

    :cond_a
    move/from16 v5, v19

    :goto_6
    or-int/2addr v0, v5

    :cond_b
    :goto_7
    and-int/lit8 v5, v9, 0x10

    const/16 v21, 0x4000

    const/16 v22, 0x2000

    if-eqz v5, :cond_c

    or-int/lit16 v0, v0, 0x6000

    goto :goto_9

    :cond_c
    and-int/lit16 v5, v11, 0x6000

    if-nez v5, :cond_e

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move/from16 v5, v21

    goto :goto_8

    :cond_d
    move/from16 v5, v22

    :goto_8
    or-int/2addr v0, v5

    :cond_e
    :goto_9
    and-int/lit8 v5, v9, 0x20

    const/high16 v23, 0x20000

    const/high16 v24, 0x10000

    const/high16 v25, 0x30000

    if-eqz v5, :cond_f

    or-int v0, v0, v25

    move-object/from16 v4, p5

    goto :goto_b

    :cond_f
    and-int v26, v11, v25

    if-nez v26, :cond_11

    move-object/from16 v4, p5

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    move/from16 v27, v23

    goto :goto_a

    :cond_10
    move/from16 v27, v24

    :goto_a
    or-int v0, v0, v27

    goto :goto_b

    :cond_11
    move-object/from16 v4, p5

    :goto_b
    and-int/lit8 v27, v9, 0x40

    const/high16 v28, 0x180000

    if-eqz v27, :cond_12

    or-int v0, v0, v28

    move-object/from16 v6, p6

    goto :goto_d

    :cond_12
    and-int v29, v11, v28

    if-nez v29, :cond_14

    move-object/from16 v6, p6

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_13

    const/high16 v30, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v30, 0x80000

    :goto_c
    or-int v0, v0, v30

    goto :goto_d

    :cond_14
    move-object/from16 v6, p6

    :goto_d
    and-int/lit16 v2, v9, 0x80

    const/high16 v30, 0xc00000

    if-eqz v2, :cond_15

    or-int v0, v0, v30

    move-object/from16 v3, p7

    goto :goto_f

    :cond_15
    and-int v31, v11, v30

    if-nez v31, :cond_17

    move-object/from16 v3, p7

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    const/high16 v31, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v31, 0x400000

    :goto_e
    or-int v0, v0, v31

    goto :goto_f

    :cond_17
    move-object/from16 v3, p7

    :goto_f
    and-int/lit16 v3, v9, 0x100

    const/high16 v31, 0x6000000

    if-eqz v3, :cond_18

    or-int v0, v0, v31

    move-object/from16 v4, p8

    goto :goto_11

    :cond_18
    and-int v31, v11, v31

    if-nez v31, :cond_1a

    move-object/from16 v4, p8

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_19

    const/high16 v31, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v31, 0x2000000

    :goto_10
    or-int v0, v0, v31

    goto :goto_11

    :cond_1a
    move-object/from16 v4, p8

    :goto_11
    and-int/lit16 v4, v9, 0x200

    const/high16 v31, 0x30000000

    if-eqz v4, :cond_1b

    or-int v0, v0, v31

    move-object/from16 v6, p9

    goto :goto_13

    :cond_1b
    and-int v31, v11, v31

    if-nez v31, :cond_1d

    move-object/from16 v6, p9

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1c

    const/high16 v31, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v31, 0x10000000

    :goto_12
    or-int v0, v0, v31

    goto :goto_13

    :cond_1d
    move-object/from16 v6, p9

    :goto_13
    and-int/lit16 v6, v9, 0x400

    if-eqz v6, :cond_1e

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v7, p10

    goto :goto_15

    :cond_1e
    and-int/lit8 v31, v10, 0x6

    if-nez v31, :cond_20

    move-object/from16 v7, p10

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1f

    const/16 v20, 0x4

    goto :goto_14

    :cond_1f
    const/16 v20, 0x2

    :goto_14
    or-int v1, v1, v20

    goto :goto_15

    :cond_20
    move-object/from16 v7, p10

    :goto_15
    and-int/lit16 v7, v9, 0x800

    if-eqz v7, :cond_21

    or-int/lit8 v1, v1, 0x30

    move/from16 v11, p11

    goto :goto_17

    :cond_21
    and-int/lit8 v20, v10, 0x30

    if-nez v20, :cond_23

    move/from16 v11, p11

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v20

    if-eqz v20, :cond_22

    const/16 v16, 0x20

    goto :goto_16

    :cond_22
    const/16 v16, 0x10

    :goto_16
    or-int v1, v1, v16

    goto :goto_17

    :cond_23
    move/from16 v11, p11

    :goto_17
    and-int/lit16 v11, v9, 0x1000

    if-eqz v11, :cond_24

    or-int/lit16 v1, v1, 0x180

    move/from16 v14, p12

    goto :goto_19

    :cond_24
    and-int/lit16 v14, v10, 0x180

    if-nez v14, :cond_26

    move/from16 v14, p12

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_25

    goto :goto_18

    :cond_25
    move/from16 v17, v18

    :goto_18
    or-int v1, v1, v17

    goto :goto_19

    :cond_26
    move/from16 v14, p12

    :goto_19
    and-int/lit16 v14, v9, 0x2000

    if-eqz v14, :cond_27

    or-int/lit16 v1, v1, 0xc00

    move/from16 v15, p13

    goto :goto_1a

    :cond_27
    and-int/lit16 v15, v10, 0xc00

    if-nez v15, :cond_29

    move/from16 v15, p13

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_28

    const/16 v19, 0x800

    :cond_28
    or-int v1, v1, v19

    goto :goto_1a

    :cond_29
    move/from16 v15, p13

    :goto_1a
    and-int/lit16 v15, v9, 0x4000

    if-eqz v15, :cond_2a

    or-int/lit16 v1, v1, 0x6000

    goto :goto_1c

    :cond_2a
    and-int/lit16 v15, v10, 0x6000

    if-nez v15, :cond_2c

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2b

    goto :goto_1b

    :cond_2b
    move/from16 v21, v22

    :goto_1b
    or-int v1, v1, v21

    :cond_2c
    :goto_1c
    const v15, 0x8000

    and-int/2addr v15, v9

    if-eqz v15, :cond_2d

    or-int v1, v1, v25

    move-object/from16 v15, p15

    goto :goto_1e

    :cond_2d
    and-int v15, v10, v25

    if-nez v15, :cond_2f

    move-object/from16 v15, p15

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2e

    move/from16 v16, v23

    goto :goto_1d

    :cond_2e
    move/from16 v16, v24

    :goto_1d
    or-int v1, v1, v16

    goto :goto_1e

    :cond_2f
    move-object/from16 v15, p15

    :goto_1e
    and-int v16, v9, v24

    if-eqz v16, :cond_30

    or-int v1, v1, v28

    goto :goto_20

    :cond_30
    and-int v16, v10, v28

    if-nez v16, :cond_32

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_31

    const/high16 v16, 0x100000

    goto :goto_1f

    :cond_31
    const/high16 v16, 0x80000

    :goto_1f
    or-int v1, v1, v16

    :cond_32
    :goto_20
    and-int v16, v9, v23

    if-eqz v16, :cond_33

    or-int v1, v1, v30

    move-object/from16 v15, p17

    goto :goto_22

    :cond_33
    and-int v16, v10, v30

    if-nez v16, :cond_35

    move-object/from16 v15, p17

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_34

    const/high16 v16, 0x800000

    goto :goto_21

    :cond_34
    const/high16 v16, 0x400000

    :goto_21
    or-int v1, v1, v16

    goto :goto_22

    :cond_35
    move-object/from16 v15, p17

    :goto_22
    const v16, 0x12492493

    and-int v9, v0, v16

    const v10, 0x12492492

    if-ne v9, v10, :cond_37

    const v9, 0x492493

    and-int/2addr v9, v1

    const v10, 0x492492

    if-ne v9, v10, :cond_37

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_36

    goto :goto_23

    .line 262
    :cond_36
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v15, p3

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    move-object/from16 v24, p7

    move-object/from16 v25, p8

    move-object/from16 v26, p9

    move-object/from16 v27, p10

    move/from16 v28, p11

    move/from16 v29, p12

    move/from16 v30, p13

    move/from16 p18, v0

    move/from16 v37, v1

    goto/16 :goto_3b

    .line 80
    :cond_37
    :goto_23
    if-eqz v5, :cond_38

    .line 67
    const/4 v5, 0x0

    .end local p5    # "placeholder":Lkotlin/jvm/functions/Function2;
    .local v5, "placeholder":Lkotlin/jvm/functions/Function2;
    goto :goto_24

    .line 80
    .end local v5    # "placeholder":Lkotlin/jvm/functions/Function2;
    .restart local p5    # "placeholder":Lkotlin/jvm/functions/Function2;
    :cond_38
    move-object/from16 v5, p5

    .line 67
    .end local p5    # "placeholder":Lkotlin/jvm/functions/Function2;
    .restart local v5    # "placeholder":Lkotlin/jvm/functions/Function2;
    :goto_24
    if-eqz v27, :cond_39

    .line 68
    const/4 v9, 0x0

    .end local p6    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .local v9, "leadingIcon":Lkotlin/jvm/functions/Function2;
    goto :goto_25

    .line 67
    .end local v9    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .restart local p6    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    :cond_39
    move-object/from16 v9, p6

    .line 68
    .end local p6    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .restart local v9    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    :goto_25
    if-eqz v2, :cond_3a

    .line 69
    const/4 v2, 0x0

    .end local p7    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .local v2, "trailingIcon":Lkotlin/jvm/functions/Function2;
    goto :goto_26

    .line 68
    .end local v2    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .restart local p7    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    :cond_3a
    move-object/from16 v2, p7

    .line 69
    .end local p7    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .restart local v2    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    :goto_26
    if-eqz v3, :cond_3b

    .line 70
    const/4 v3, 0x0

    .end local p8    # "prefix":Lkotlin/jvm/functions/Function2;
    .local v3, "prefix":Lkotlin/jvm/functions/Function2;
    goto :goto_27

    .line 69
    .end local v3    # "prefix":Lkotlin/jvm/functions/Function2;
    .restart local p8    # "prefix":Lkotlin/jvm/functions/Function2;
    :cond_3b
    move-object/from16 v3, p8

    .line 70
    .end local p8    # "prefix":Lkotlin/jvm/functions/Function2;
    .restart local v3    # "prefix":Lkotlin/jvm/functions/Function2;
    :goto_27
    if-eqz v4, :cond_3c

    .line 71
    const/4 v4, 0x0

    .end local p9    # "suffix":Lkotlin/jvm/functions/Function2;
    .local v4, "suffix":Lkotlin/jvm/functions/Function2;
    goto :goto_28

    .line 70
    .end local v4    # "suffix":Lkotlin/jvm/functions/Function2;
    .restart local p9    # "suffix":Lkotlin/jvm/functions/Function2;
    :cond_3c
    move-object/from16 v4, p9

    .line 71
    .end local p9    # "suffix":Lkotlin/jvm/functions/Function2;
    .restart local v4    # "suffix":Lkotlin/jvm/functions/Function2;
    :goto_28
    if-eqz v6, :cond_3d

    .line 72
    const/4 v6, 0x0

    .end local p10    # "supportingText":Lkotlin/jvm/functions/Function2;
    .local v6, "supportingText":Lkotlin/jvm/functions/Function2;
    goto :goto_29

    .line 71
    .end local v6    # "supportingText":Lkotlin/jvm/functions/Function2;
    .restart local p10    # "supportingText":Lkotlin/jvm/functions/Function2;
    :cond_3d
    move-object/from16 v6, p10

    .line 72
    .end local p10    # "supportingText":Lkotlin/jvm/functions/Function2;
    .restart local v6    # "supportingText":Lkotlin/jvm/functions/Function2;
    :goto_29
    if-eqz v7, :cond_3e

    .line 73
    const/4 v7, 0x0

    .end local p11    # "singleLine":Z
    .local v7, "singleLine":Z
    goto :goto_2a

    .line 72
    .end local v7    # "singleLine":Z
    .restart local p11    # "singleLine":Z
    :cond_3e
    move/from16 v7, p11

    .line 73
    .end local p11    # "singleLine":Z
    .restart local v7    # "singleLine":Z
    :goto_2a
    if-eqz v11, :cond_3f

    .line 74
    const/4 v10, 0x1

    .end local p12    # "enabled":Z
    .local v10, "enabled":Z
    goto :goto_2b

    .line 73
    .end local v10    # "enabled":Z
    .restart local p12    # "enabled":Z
    :cond_3f
    move/from16 v10, p12

    .line 74
    .end local p12    # "enabled":Z
    .restart local v10    # "enabled":Z
    :goto_2b
    if-eqz v14, :cond_40

    .line 75
    const/4 v11, 0x0

    .end local p13    # "isError":Z
    .local v11, "isError":Z
    goto :goto_2c

    .line 74
    .end local v11    # "isError":Z
    .restart local p13    # "isError":Z
    :cond_40
    move/from16 v11, p13

    .line 75
    .end local p13    # "isError":Z
    .restart local v11    # "isError":Z
    :goto_2c
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v14

    if-eqz v14, :cond_41

    .line 80
    const v14, -0x38729d6c

    const-string/jumbo v15, "androidx.compose.material3.CommonDecorationBox (TextFieldImpl.kt:79)"

    invoke-static {v14, v0, v1, v15}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_41
    const v14, -0x26871e24

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v14, "CC(remember):TextFieldImpl.kt#9igjgp"

    invoke-static {v8, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v14, v0, 0x70

    const/16 v15, 0x20

    if-ne v14, v15, :cond_42

    const/4 v14, 0x1

    goto :goto_2d

    :cond_42
    const/4 v14, 0x0

    :goto_2d
    and-int/lit16 v15, v0, 0x1c00

    move/from16 p18, v0

    const/16 v0, 0x800

    .end local v0    # "$dirty":I
    .local p18, "$dirty":I
    if-ne v15, v0, :cond_43

    const/4 v0, 0x1

    goto :goto_2e

    :cond_43
    const/4 v0, 0x0

    :goto_2e
    or-int/2addr v0, v14

    .line 81
    move-object v14, v8

    .local v0, "invalid$iv":Z
    .local v14, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 434
    .local v15, "$i$f$cache":I
    move/from16 p13, v15

    .end local v15    # "$i$f$cache":I
    .local p13, "$i$f$cache":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 435
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_45

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v18, v0

    .end local v0    # "invalid$iv":Z
    .local v18, "invalid$iv":Z
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v15, v0, :cond_44

    goto :goto_2f

    .line 439
    :cond_44
    move-object/from16 p5, v15

    move-object/from16 v0, p5

    move-object/from16 v15, p3

    goto :goto_30

    .line 435
    .end local v18    # "invalid$iv":Z
    .restart local v0    # "invalid$iv":Z
    :cond_45
    move/from16 v18, v0

    .line 436
    .end local v0    # "invalid$iv":Z
    .restart local v18    # "invalid$iv":Z
    :goto_2f
    const/4 v0, 0x0

    .line 82
    .local v0, "$i$a$-cache-TextFieldImplKt$CommonDecorationBox$transformedText$1":I
    move/from16 v17, v0

    .end local v0    # "$i$a$-cache-TextFieldImplKt$CommonDecorationBox$transformedText$1":I
    .local v17, "$i$a$-cache-TextFieldImplKt$CommonDecorationBox$transformedText$1":I
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x6

    const/16 v22, 0x0

    move-object/from16 p5, v0

    move-object/from16 p6, p1

    move-object/from16 p7, v19

    move-object/from16 p8, v20

    move/from16 p9, v21

    move-object/from16 p10, v22

    invoke-direct/range {p5 .. p10}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 p5, v15

    move-object/from16 v15, p3

    .end local v15    # "it$iv":Ljava/lang/Object;
    .local p5, "it$iv":Ljava/lang/Object;
    invoke-interface {v15, v0}, Landroidx/compose/ui/text/input/VisualTransformation;->filter(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object v0

    .line 436
    .end local v17    # "$i$a$-cache-TextFieldImplKt$CommonDecorationBox$transformedText$1":I
    nop

    .line 437
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 438
    nop

    .line 435
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_30
    nop

    .line 434
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p5    # "it$iv":Ljava/lang/Object;
    nop

    .line 81
    .end local v14    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "invalid$iv":Z
    .end local p13    # "$i$f$cache":I
    check-cast v0, Landroidx/compose/ui/text/input/TransformedText;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 83
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TransformedText;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v0

    .line 81
    nop

    .line 85
    .local v0, "transformedText":Ljava/lang/String;
    shr-int/lit8 v14, v1, 0xc

    and-int/lit8 v14, v14, 0xe

    invoke-static {v13, v8, v14}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v14

    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .line 86
    .local v14, "isFocused":Z
    nop

    .line 87
    if-eqz v14, :cond_46

    sget-object v16, Landroidx/compose/material3/InputPhase;->Focused:Landroidx/compose/material3/InputPhase;

    goto :goto_32

    .line 88
    :cond_46
    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/CharSequence;

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v16

    if-nez v16, :cond_47

    const/16 v16, 0x1

    goto :goto_31

    :cond_47
    const/16 v16, 0x0

    :goto_31
    if-eqz v16, :cond_48

    sget-object v16, Landroidx/compose/material3/InputPhase;->UnfocusedEmpty:Landroidx/compose/material3/InputPhase;

    goto :goto_32

    .line 89
    :cond_48
    sget-object v16, Landroidx/compose/material3/InputPhase;->UnfocusedNotEmpty:Landroidx/compose/material3/InputPhase;

    .line 86
    :goto_32
    move-object/from16 p5, v16

    .line 92
    .local p5, "inputState":Landroidx/compose/material3/InputPhase;
    move/from16 v37, v1

    .end local v1    # "$dirty1":I
    .local v37, "$dirty1":I
    new-instance v1, Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$labelColor$1;

    invoke-direct {v1, v12, v10, v11, v13}, Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$labelColor$1;-><init>(Landroidx/compose/material3/TextFieldColors;ZZLandroidx/compose/foundation/interaction/InteractionSource;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 96
    .local v1, "labelColor":Lkotlin/jvm/functions/Function3;
    sget-object v12, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v13, 0x6

    invoke-virtual {v12, v8, v13}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v12

    .line 97
    .local v12, "typography":Landroidx/compose/material3/Typography;
    invoke-virtual {v12}, Landroidx/compose/material3/Typography;->getBodyLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v38

    .line 98
    .local v38, "bodyLarge":Landroidx/compose/ui/text/TextStyle;
    invoke-virtual {v12}, Landroidx/compose/material3/Typography;->getBodySmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object v39

    .line 100
    .local v39, "bodySmall":Landroidx/compose/ui/text/TextStyle;
    move/from16 p6, v14

    .end local v14    # "isFocused":Z
    .local p6, "isFocused":Z
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v13

    sget-object v16, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    move-object/from16 p8, v6

    move/from16 p9, v7

    .end local v6    # "supportingText":Lkotlin/jvm/functions/Function2;
    .end local v7    # "singleLine":Z
    .local p8, "supportingText":Lkotlin/jvm/functions/Function2;
    .local p9, "singleLine":Z
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v6

    invoke-static {v13, v14, v6, v7}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-virtual/range {v39 .. v39}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v6

    sget-object v13, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v13

    invoke-static {v6, v7, v13, v14}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 101
    :cond_49
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v6

    sget-object v13, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v13

    invoke-static {v6, v7, v13, v14}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    if-nez v6, :cond_4b

    invoke-virtual/range {v39 .. v39}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v6

    sget-object v13, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v13

    invoke-static {v6, v7, v13, v14}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_4b

    :cond_4a
    const/4 v6, 0x1

    goto :goto_33

    :cond_4b
    const/4 v6, 0x0

    .line 99
    :goto_33
    nop

    .line 103
    .local v6, "shouldOverrideTextStyleColor":Z
    sget-object v7, Landroidx/compose/material3/TextFieldTransitionScope;->INSTANCE:Landroidx/compose/material3/TextFieldTransitionScope;

    .line 104
    const v13, -0x26871a65

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "*104@4123L10"

    invoke-static {v8, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 105
    sget-object v13, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v14, 0x6

    invoke-virtual {v13, v8, v14}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/material3/Typography;->getBodySmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v13

    .local v13, "$this$CommonDecorationBox_u24lambda_u242":J
    const/16 v16, 0x0

    move-object/from16 p10, v12

    .end local v12    # "typography":Landroidx/compose/material3/Typography;
    .local v16, "$i$a$-with-TextFieldImplKt$CommonDecorationBox$1":I
    .local p10, "typography":Landroidx/compose/material3/Typography;
    const v12, -0x26871a28

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "*105@4217L22"

    invoke-static {v8, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 106
    if-eqz v6, :cond_4e

    move-wide/from16 v17, v13

    .local v17, "$this$takeOrElse_u2dDxMtmZc$iv":J
    const/4 v12, 0x0

    .line 440
    .local v12, "$i$f$takeOrElse-DxMtmZc":I
    move-wide/from16 v19, v17

    .local v19, "$this$isSpecified$iv$iv":J
    const/16 v21, 0x0

    .line 441
    .local v21, "$i$f$isSpecified-8_81llA":I
    sget-object v22, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v22

    cmp-long v22, v19, v22

    if-eqz v22, :cond_4c

    const/16 v19, 0x1

    goto :goto_34

    :cond_4c
    const/16 v19, 0x0

    .line 440
    .end local v19    # "$this$isSpecified$iv$iv":J
    .end local v21    # "$i$f$isSpecified-8_81llA":I
    :goto_34
    if-eqz v19, :cond_4d

    move-wide/from16 v21, v13

    move-object/from16 v13, p5

    goto :goto_35

    :cond_4d
    const/16 v19, 0x0

    .line 106
    .local v19, "$i$a$-takeOrElse-DxMtmZc-TextFieldImplKt$CommonDecorationBox$1$1":I
    move/from16 p13, v12

    const/16 v20, 0x0

    .end local v12    # "$i$f$takeOrElse-DxMtmZc":I
    .local p13, "$i$f$takeOrElse-DxMtmZc":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-wide/from16 v21, v13

    move-object/from16 v13, p5

    .end local p5    # "inputState":Landroidx/compose/material3/InputPhase;
    .local v13, "inputState":Landroidx/compose/material3/InputPhase;
    .local v21, "$this$CommonDecorationBox_u24lambda_u242":J
    invoke-interface {v1, v13, v8, v12}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v19

    .line 440
    .end local v19    # "$i$a$-takeOrElse-DxMtmZc-TextFieldImplKt$CommonDecorationBox$1$1":I
    move-wide/from16 v17, v19

    .line 106
    .end local v17    # "$this$takeOrElse_u2dDxMtmZc$iv":J
    .end local p13    # "$i$f$takeOrElse-DxMtmZc":I
    :goto_35
    move-wide/from16 v40, v17

    goto :goto_36

    .end local v21    # "$this$CommonDecorationBox_u24lambda_u242":J
    .local v13, "$this$CommonDecorationBox_u24lambda_u242":J
    .restart local p5    # "inputState":Landroidx/compose/material3/InputPhase;
    :cond_4e
    move-wide/from16 v21, v13

    move-object/from16 v13, p5

    .end local p5    # "inputState":Landroidx/compose/material3/InputPhase;
    .local v13, "inputState":Landroidx/compose/material3/InputPhase;
    .restart local v21    # "$this$CommonDecorationBox_u24lambda_u242":J
    move-wide/from16 v40, v21

    :goto_36
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 105
    .end local v16    # "$i$a$-with-TextFieldImplKt$CommonDecorationBox$1":I
    .end local v21    # "$this$CommonDecorationBox_u24lambda_u242":J
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v12, -0x268719a4

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "*107@4316L10"

    invoke-static {v8, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 108
    sget-object v12, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v14, 0x6

    invoke-virtual {v12, v8, v14}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/material3/Typography;->getBodyLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v16

    .local v16, "$this$CommonDecorationBox_u24lambda_u244":J
    const/4 v12, 0x0

    .local v12, "$i$a$-with-TextFieldImplKt$CommonDecorationBox$2":I
    const v14, -0x26871967

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v14, "*108@4410L22"

    invoke-static {v8, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 109
    if-eqz v6, :cond_51

    move-wide/from16 v18, v16

    .local v18, "$this$takeOrElse_u2dDxMtmZc$iv":J
    const/4 v14, 0x0

    .line 442
    .local v14, "$i$f$takeOrElse-DxMtmZc":I
    move-wide/from16 v20, v18

    .local v20, "$this$isSpecified$iv$iv":J
    const/16 v22, 0x0

    .line 443
    .local v22, "$i$f$isSpecified-8_81llA":I
    sget-object v23, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v23

    cmp-long v23, v20, v23

    if-eqz v23, :cond_4f

    const/16 v20, 0x1

    goto :goto_37

    :cond_4f
    const/16 v20, 0x0

    .line 442
    .end local v20    # "$this$isSpecified$iv$iv":J
    .end local v22    # "$i$f$isSpecified-8_81llA":I
    :goto_37
    if-eqz v20, :cond_50

    move/from16 p5, v12

    const/16 v21, 0x0

    goto :goto_38

    :cond_50
    const/16 v20, 0x0

    .line 109
    .local v20, "$i$a$-takeOrElse-DxMtmZc-TextFieldImplKt$CommonDecorationBox$2$1":I
    move/from16 p5, v12

    const/16 v21, 0x0

    .end local v12    # "$i$a$-with-TextFieldImplKt$CommonDecorationBox$2":I
    .local p5, "$i$a$-with-TextFieldImplKt$CommonDecorationBox$2":I
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v1, v13, v8, v12}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v22

    .line 442
    .end local v20    # "$i$a$-takeOrElse-DxMtmZc-TextFieldImplKt$CommonDecorationBox$2$1":I
    move-wide/from16 v18, v22

    .line 109
    .end local v14    # "$i$f$takeOrElse-DxMtmZc":I
    .end local v18    # "$this$takeOrElse_u2dDxMtmZc$iv":J
    :goto_38
    move-wide/from16 v42, v18

    goto :goto_39

    .end local p5    # "$i$a$-with-TextFieldImplKt$CommonDecorationBox$2":I
    .restart local v12    # "$i$a$-with-TextFieldImplKt$CommonDecorationBox$2":I
    :cond_51
    move/from16 p5, v12

    const/16 v21, 0x0

    .end local v12    # "$i$a$-with-TextFieldImplKt$CommonDecorationBox$2":I
    .restart local p5    # "$i$a$-with-TextFieldImplKt$CommonDecorationBox$2":I
    move-wide/from16 v42, v16

    :goto_39
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 108
    .end local v16    # "$this$CommonDecorationBox_u24lambda_u244":J
    .end local p5    # "$i$a$-with-TextFieldImplKt$CommonDecorationBox$2":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 111
    nop

    .line 112
    if-eqz p4, :cond_52

    const/4 v12, 0x1

    goto :goto_3a

    :cond_52
    move/from16 v12, v21

    .line 113
    :goto_3a
    new-instance v14, Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$3;

    move-object/from16 v16, v14

    move-object/from16 v17, p4

    move-object/from16 v18, p16

    move/from16 v19, v10

    move/from16 v20, v11

    move-object/from16 v21, p14

    move-object/from16 v22, v5

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v9

    move-object/from16 v27, v2

    move-object/from16 v28, p8

    move-object/from16 v29, p0

    move-object/from16 v30, p2

    move/from16 v31, p9

    move-object/from16 v32, p15

    move/from16 v33, v6

    move-object/from16 v34, v38

    move-object/from16 v35, v39

    move-object/from16 v36, p17

    invoke-direct/range {v16 .. v36}, Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$3;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;ZZLandroidx/compose/foundation/interaction/InteractionSource;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldType;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 p5, v0

    .end local v0    # "transformedText":Ljava/lang/String;
    .local p5, "transformedText":Ljava/lang/String;
    const v0, 0x4cf0ddc7    # 1.2628332E8f

    move-object/from16 p7, v2

    const/4 v2, 0x1

    .end local v2    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .restart local p7    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    invoke-static {v8, v0, v2, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Lkotlin/jvm/functions/Function7;

    const/high16 v26, 0x1b0000

    .line 103
    move-object/from16 v16, v7

    move-object/from16 v17, v13

    move-wide/from16 v18, v40

    move-wide/from16 v20, v42

    move-object/from16 v22, v1

    move/from16 v23, v12

    move-object/from16 v25, v8

    invoke-virtual/range {v16 .. v26}, Landroidx/compose/material3/TextFieldTransitionScope;->Transition-DTcfvLk(Landroidx/compose/material3/InputPhase;JJLkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function7;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 262
    .end local v1    # "labelColor":Lkotlin/jvm/functions/Function3;
    .end local v6    # "shouldOverrideTextStyleColor":Z
    .end local v13    # "inputState":Landroidx/compose/material3/InputPhase;
    .end local v38    # "bodyLarge":Landroidx/compose/ui/text/TextStyle;
    .end local v39    # "bodySmall":Landroidx/compose/ui/text/TextStyle;
    .end local p5    # "transformedText":Ljava/lang/String;
    .end local p6    # "isFocused":Z
    .end local p10    # "typography":Landroidx/compose/material3/Typography;
    :cond_53
    move-object/from16 v24, p7

    move-object/from16 v27, p8

    move/from16 v28, p9

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v9

    move/from16 v29, v10

    move/from16 v30, v11

    .end local v3    # "prefix":Lkotlin/jvm/functions/Function2;
    .end local v4    # "suffix":Lkotlin/jvm/functions/Function2;
    .end local v5    # "placeholder":Lkotlin/jvm/functions/Function2;
    .end local v9    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .end local v10    # "enabled":Z
    .end local v11    # "isError":Z
    .end local p7    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .end local p8    # "supportingText":Lkotlin/jvm/functions/Function2;
    .end local p9    # "singleLine":Z
    .local v22, "placeholder":Lkotlin/jvm/functions/Function2;
    .local v23, "leadingIcon":Lkotlin/jvm/functions/Function2;
    .local v24, "trailingIcon":Lkotlin/jvm/functions/Function2;
    .local v25, "prefix":Lkotlin/jvm/functions/Function2;
    .local v26, "suffix":Lkotlin/jvm/functions/Function2;
    .local v27, "supportingText":Lkotlin/jvm/functions/Function2;
    .local v28, "singleLine":Z
    .local v29, "enabled":Z
    .local v30, "isError":Z
    :goto_3b
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_54

    new-instance v31, Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$4;

    move/from16 v32, p18

    .end local p18    # "$dirty":I
    .local v32, "$dirty":I
    move-object/from16 v0, v31

    move/from16 v33, v37

    .end local v37    # "$dirty1":I
    .local v33, "$dirty1":I
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v34, v8

    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v34, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v8, v24

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    move-object/from16 v11, v27

    move/from16 v12, v28

    move/from16 v13, v29

    move-object/from16 v44, v14

    move/from16 v14, v30

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    invoke-direct/range {v0 .. v21}, Landroidx/compose/material3/TextFieldImplKt$CommonDecorationBox$4;-><init>(Landroidx/compose/material3/TextFieldType;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;III)V

    move-object/from16 v0, v31

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v44

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_3c

    .end local v32    # "$dirty":I
    .end local v33    # "$dirty1":I
    .end local v34    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v37    # "$dirty1":I
    .restart local p18    # "$dirty":I
    :cond_54
    move/from16 v32, p18

    move-object/from16 v34, v8

    move/from16 v33, v37

    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v37    # "$dirty1":I
    .end local p18    # "$dirty":I
    .restart local v32    # "$dirty":I
    .restart local v33    # "$dirty1":I
    .restart local v34    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_3c
    return-void
.end method

.method public static final Decoration-KTwxG1Y(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 16
    .param p0, "contentColor"    # J
    .param p2, "typography"    # Landroidx/compose/ui/text/TextStyle;
    .param p3, "content"    # Lkotlin/jvm/functions/Function2;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/ui/text/TextStyle;",
            "Lkotlin/jvm/functions/Function2<",
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

    .line 272
    move-wide/from16 v7, p0

    move-object/from16 v9, p3

    move/from16 v10, p5

    const v0, -0x5a9a5f29

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Decoration)P(1:c#ui.graphics.Color,2):TextFieldImpl.kt#uh7d8r"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p5

    .local v1, "$dirty":I
    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v10, 0x6

    if-nez v2, :cond_2

    invoke-interface {v11, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

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
    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v3, p2

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v10, 0x30

    if-nez v3, :cond_5

    move-object/from16 v3, p2

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    goto :goto_3

    :cond_5
    move-object/from16 v3, p2

    :goto_3
    and-int/lit8 v4, p6, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v10, 0x180

    if-nez v4, :cond_8

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v1, v4

    :cond_8
    :goto_5
    move v12, v1

    .end local v1    # "$dirty":I
    .local v12, "$dirty":I
    and-int/lit16 v1, v12, 0x93

    const/16 v4, 0x92

    if-ne v1, v4, :cond_a

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_6

    .line 283
    :cond_9
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v13, v3

    goto :goto_9

    .line 272
    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    .line 270
    const/4 v1, 0x0

    move-object v6, v1

    .end local p2    # "typography":Landroidx/compose/ui/text/TextStyle;
    .local v1, "typography":Landroidx/compose/ui/text/TextStyle;
    goto :goto_7

    .line 272
    .end local v1    # "typography":Landroidx/compose/ui/text/TextStyle;
    .restart local p2    # "typography":Landroidx/compose/ui/text/TextStyle;
    :cond_b
    move-object v6, v3

    .line 270
    .end local p2    # "typography":Landroidx/compose/ui/text/TextStyle;
    .local v6, "typography":Landroidx/compose/ui/text/TextStyle;
    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 272
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.Decoration (TextFieldImpl.kt:271)"

    invoke-static {v0, v12, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 273
    :cond_c
    new-instance v0, Landroidx/compose/material3/TextFieldImplKt$Decoration$contentWithColor$1;

    invoke-direct {v0, v7, v8, v9}, Landroidx/compose/material3/TextFieldImplKt$Decoration$contentWithColor$1;-><init>(JLkotlin/jvm/functions/Function2;)V

    const v1, 0x56639ed9

    const/4 v2, 0x1

    invoke-static {v11, v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lkotlin/jvm/functions/Function2;

    .line 279
    .local v13, "contentWithColor":Lkotlin/jvm/functions/Function2;
    if-eqz v6, :cond_d

    .line 280
    const v0, 0x6d1ab802

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "279@11381L63"

    invoke-static {v11, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v12, 0xe

    and-int/lit8 v1, v12, 0x70

    or-int/2addr v0, v1

    and-int/lit16 v1, v12, 0x380

    or-int v5, v0, v1

    move-wide/from16 v0, p0

    move-object v2, v6

    move-object/from16 v3, p3

    move-object v4, v11

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/ProvideContentColorTextStyleKt;->ProvideContentColorTextStyle-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_8

    .line 282
    :cond_d
    const v0, 0x6d1ab853

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "281@11462L18"

    invoke-static {v11, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v11, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 283
    .end local v13    # "contentWithColor":Lkotlin/jvm/functions/Function2;
    :cond_e
    move-object v13, v6

    .end local v6    # "typography":Landroidx/compose/ui/text/TextStyle;
    .local v13, "typography":Landroidx/compose/ui/text/TextStyle;
    :goto_9
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_f

    new-instance v15, Landroidx/compose/material3/TextFieldImplKt$Decoration$1;

    move-object v0, v15

    move-wide/from16 v1, p0

    move-object v3, v13

    move-object/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/TextFieldImplKt$Decoration$1;-><init>(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;II)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-interface {v14, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_f
    return-void
.end method

.method public static final defaultErrorSemantics(Landroidx/compose/ui/Modifier;ZLjava/lang/String;)Landroidx/compose/ui/Modifier;
    .locals 4
    .param p0, "$this$defaultErrorSemantics"    # Landroidx/compose/ui/Modifier;
    .param p1, "isError"    # Z
    .param p2, "defaultErrorMessage"    # Ljava/lang/String;

    .line 290
    if-eqz p1, :cond_0

    new-instance v0, Landroidx/compose/material3/TextFieldImplKt$defaultErrorSemantics$1;

    invoke-direct {v0, p2}, Landroidx/compose/material3/TextFieldImplKt$defaultErrorSemantics$1;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static final getHorizontalIconPadding()F
    .locals 1

    .line 425
    sget v0, Landroidx/compose/material3/TextFieldImplKt;->HorizontalIconPadding:F

    return v0
.end method

.method public static final getIconDefaultSizeModifier()Landroidx/compose/ui/Modifier;
    .locals 1

    .line 432
    sget-object v0, Landroidx/compose/material3/TextFieldImplKt;->IconDefaultSizeModifier:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public static final getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$layoutId"    # Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 407
    invoke-interface {p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->getParentData()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/ui/layout/LayoutIdParentData;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/ui/layout/LayoutIdParentData;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutIdParentData;->getLayoutId()Ljava/lang/Object;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public static final getMinFocusedLabelLineHeight()F
    .locals 1

    .line 429
    sget v0, Landroidx/compose/material3/TextFieldImplKt;->MinFocusedLabelLineHeight:F

    return v0
.end method

.method public static final getMinSupportingTextLineHeight()F
    .locals 1

    .line 430
    sget v0, Landroidx/compose/material3/TextFieldImplKt;->MinSupportingTextLineHeight:F

    return v0
.end method

.method public static final getMinTextLineHeight()F
    .locals 1

    .line 428
    sget v0, Landroidx/compose/material3/TextFieldImplKt;->MinTextLineHeight:F

    return v0
.end method

.method public static final getPrefixSuffixTextPadding()F
    .locals 1

    .line 427
    sget v0, Landroidx/compose/material3/TextFieldImplKt;->PrefixSuffixTextPadding:F

    return v0
.end method

.method public static final getSupportingTopPadding()F
    .locals 1

    .line 426
    sget v0, Landroidx/compose/material3/TextFieldImplKt;->SupportingTopPadding:F

    return v0
.end method

.method public static final getTextFieldPadding()F
    .locals 1

    .line 424
    sget v0, Landroidx/compose/material3/TextFieldImplKt;->TextFieldPadding:F

    return v0
.end method

.method public static final getZeroConstraints()J
    .locals 2

    .line 418
    sget-wide v0, Landroidx/compose/material3/TextFieldImplKt;->ZeroConstraints:J

    return-wide v0
.end method

.method public static final heightOrZero(Landroidx/compose/ui/layout/Placeable;)I
    .locals 1
    .param p0, "placeable"    # Landroidx/compose/ui/layout/Placeable;

    .line 293
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final widthOrZero(Landroidx/compose/ui/layout/Placeable;)I
    .locals 1
    .param p0, "placeable"    # Landroidx/compose/ui/layout/Placeable;

    .line 292
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
